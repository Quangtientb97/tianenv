#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : 01_connect_signal.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-03-22 12:54:55
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
if (tian.argv.len() == 1):
    print("Wrong syntax:")
    print("    $ py 02_connect_signal.py <excel_link>")
excel_link = sys.argv[1]
workexcel  = excel(excel_link)
workbook   = workexcel.wb

sheet_names = workbook.get_sheet_names()

tian.run("mkdir -p result")
soc_tb_link = "./result/soc_tb.sv"

tian.file.write(soc_tb_link, '')

tian.file.append(soc_tb_link, '`define AXI_ADDR_WIDTH 64\n')
tian.file.append(soc_tb_link, '`define AXI_ADDR_WIDTH 64\n')
tian.file.append(soc_tb_link, '`define AXI_ID_WIDTH   4\n')
tian.file.append(soc_tb_link, '`define AXI_USER_WIDTH 4\n')
tian.file.append(soc_tb_link, '`define APB_ADDR_WIDTH 32\n')
tian.file.append(soc_tb_link, '`define APB_ADDR_WIDTH 32\n')
tian.file.append(soc_tb_link, '`define AHB_DATA_WIDTH 32\n')
tian.file.append(soc_tb_link, '`define AHB_DATA_WIDTH 32\n')

for sheet_name in sheet_names:
    tian.file.append(soc_tb_link, f'\n// Connect {sheet_name}\n')

    if ("axi" in sheet_name):
        if (sheet_name[-1] == 's') and (sheet_name[-2] == '_'):
            tian.file.append(soc_tb_link, "cdn_axi_s_if #(\n")
        else:
            tian.file.append(soc_tb_link, "cdn_axi_m_if #(\n")
        tian.file.append(soc_tb_link, "    .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),\n")
        tian.file.append(soc_tb_link, "    .P_DATA_WIDTH(`AXI_DATA_WIDTH),\n")
        tian.file.append(soc_tb_link, "    .P_ID_WIDTH  (`AXI_ID_WIDTH),\n")
        tian.file.append(soc_tb_link, "    .P_USER_WIDTH(`AXI_USER_WIDTH)\n")
        tian.file.append(soc_tb_link, f") {sheet_name}();\n\n")
        tian.file.append(soc_tb_link, f"")
#        tian.file.append(soc_tb_link, "cdn_axi_m_passive_if #(\n")
#        tian.file.append(soc_tb_link, "    .ADDR_WIDTH(`AXI_ADDR_WIDTH),\n")
#        tian.file.append(soc_tb_link, "    .DATA_WIDTH(`AXI_DATA_WIDTH)\n")
#        tian.file.append(soc_tb_link, f") {sheet_name}_passive();\n\n")

    if ("apb" in sheet_name):
        if (sheet_name[-1] == 's') and (sheet_name[-2] == '_'):
            tian.file.append(soc_tb_link, "cdn_apb_s_if #(\n")
        else:
            tian.file.append(soc_tb_link, "cdn_apb_m_if #(\n")
        tian.file.append(soc_tb_link, "    .ADDR_WIDTH(`APB_ADDR_WIDTH),\n")
        tian.file.append(soc_tb_link, "    .DATA_WIDTH(`APB_DATA_WIDTH)\n")
        tian.file.append(soc_tb_link, f") {sheet_name}();\n\n")
        tian.file.append(soc_tb_link, f"")
#        tian.file.append(soc_tb_link, "cdn_apb_m_passive_if #(\n")
#        tian.file.append(soc_tb_link, "    .ADDR_WIDTH(`APB_ADDR_WIDTH),\n")
#        tian.file.append(soc_tb_link, "    .DATA_WIDTH(`APB_DATA_WIDTH)\n")
#        tian.file.append(soc_tb_link, f") {sheet_name}_passive();\n\n")

    if ("ahb" in sheet_name):
        if (sheet_name[-1] == 's') and (sheet_name[-2] == '_'):
            tian.file.append(soc_tb_link, "cdn_ahb_s_if #(\n")
        else:
            tian.file.append(soc_tb_link, "cdn_ahb_m_if #(\n")
        tian.file.append(soc_tb_link, "    .ADDR_WIDTH(`AHB_ADDR_WIDTH),\n")
        tian.file.append(soc_tb_link, "    .DATA_WIDTH(`AHB_DATA_WIDTH)\n")
        tian.file.append(soc_tb_link, f") {sheet_name}();\n\n")
        tian.file.append(soc_tb_link, f"")
#        tian.file.append(soc_tb_link, "cdn_ahb_m_passive_if #(\n")
#        tian.file.append(soc_tb_link, "    .ADDR_WIDTH(`AHB_ADDR_WIDTH),\n")
#        tian.file.append(soc_tb_link, "    .DATA_WIDTH(`AHB_DATA_WIDTH)\n")
#        tian.file.append(soc_tb_link, f") {sheet_name}_passive();\n\n")

    sheet = workbook[sheet_name]
    for cell in sheet['A']:
        if (cell.value == 'Type'):
            continue
        row        = cell.row
        port_type  = sheet[f'A{row}'].value
        signal     = sheet[f'B{row}'].value
        tb_hier    = sheet[f'C{row}'].value
        top_hier   = sheet[f'D{row}'].value

        if (top_hier == None):
            if ("resetn" in signal):
                top_hier = "//FIXME"
            else:
                print(f"Warning: miss data in {sheet_name}.D{row} ({signal})")
                continue

        if "top." not in top_hier: 
            top_hier = "top." + top_hier

        if ("clk" in signal) or ("resetn" in signal):
            if (port_type == 'input'):
                tian.file.append(soc_tb_link, "    assign %-30s = %s;\n" % (tb_hier, top_hier))
            else:
                tian.file.append(soc_tb_link, "    assign %-50s = %s;\n" % (top_hier, tb_hier))
            continue

        if (port_type == 'input'):
            tian.file.append(soc_tb_link, "    assign #10ps %-30s = %s;\n" % (tb_hier, top_hier))
        else:
            tian.file.append(soc_tb_link, "    assign #10ps %-50s = %s;\n" % (top_hier, tb_hier))
    
# Reserved for passive interface
"""
    tian.file.append(soc_tb_link, "// Passive interface\n")

    for cell in sheet['A']:
        if (cell.value == 'Type'):
            continue
        row        = cell.row
        port_type  = sheet[f'A{row}'].value
        signal     = sheet[f'B{row}'].value
        tb_hier    = sheet[f'C{row}'].value.replace(".", "_passive.")
        top_hier   = sheet[f'D{row}'].value
        if (top_hier == None):
            if ("resetn" in signal):
                top_hier = "//FIXME"
            else:
                print(f"Warning: miss data in {sheet_name}.D{row} ({signal})")
                continue

        if ("clk" in signal) or ("resetn" in signal):
            if (port_type == 'input'):
                tian.file.append(soc_tb_link, "    assign %-30s = %s;\n" % (tb_hier, top_hier))
            else:
                tian.file.append(soc_tb_link, "    assign %-50s = %s;\n" % (top_hier, tb_hier))
            continue

        if "top." not in top_hier: 
            top_hier = "top." + top_hier
        tian.file.append(soc_tb_link, "    assign #10ps %-30s = %s;\n" % (tb_hier, top_hier))
"""

config_apb = ""
config_ahb = ""
config_axi = ""
for sheet_name in sheet_names:
    if ("apb" in sheet_name):
        if (sheet_name[-1] == 's') and (sheet_name[-2] == '_'):
            config_apb += f'        uvm_config_db#(virtual cdn_apb_s_if#(`APB_ADDR_WIDTH, `APB_DATA_WIDTH, 1))::set(null, "uvm_test_top.soc_env.agent_{sheet_name}"  , "_intf" , {sheet_name}        );\n'
        else:
            config_apb += f'        uvm_config_db#(virtual cdn_apb_m_if#(`APB_ADDR_WIDTH, `APB_DATA_WIDTH, 1))::set(null, "uvm_test_top.soc_env.agent_{sheet_name}"  , "_intf" , {sheet_name}        );\n'
    if ("ahb" in sheet_name):
        if (sheet_name[-1] == 's') and (sheet_name[-2] == '_'):
            config_ahb += f'        uvm_config_db#(virtual cdn_ahb_s_if#(`AHB_ADDR_WIDTH, `AHB_DATA_WIDTH, 1))::set(null, "uvm_test_top.soc_env.agent_{sheet_name}"  , "_intf" , {sheet_name}        );\n'
        else:
            config_ahb += f'        uvm_config_db#(virtual cdn_ahb_m_if#(`AHB_ADDR_WIDTH, `AHB_DATA_WIDTH, 1))::set(null, "uvm_test_top.soc_env.agent_{sheet_name}"  , "_intf" , {sheet_name}        );\n'
    if ("axi" in sheet_name):
        if (sheet_name[-1] == 's') and (sheet_name[-2] == '_'):
            config_axi += f'        uvm_config_db#(virtual cdn_axi_s_if#(\n'
        else:
            config_axi += f'        uvm_config_db#(virtual cdn_axi_m_if#(\n'
        config_axi += f'            .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),\n'
        config_axi += f'            .P_DATA_WIDTH(`AXI_DATA_WIDTH),\n'
        config_axi += f'            .P_ID_WIDTH  (`AXI_ID_WIDTH),\n'
        config_axi += f'            .P_USER_WIDTH(`AXI_USER_WIDTH)\n'
        config_axi += f'        ))::set(null, "uvm_test_top.soc_env.agent_axi"  , "_intf", {sheet_name});\n'


wdata = f"""
    //----------------------------------------------------------------------------------------------
    //      BUS protocol
    //----------------------------------------------------------------------------------------------

    //  Start UVM
    initial begin
        //  UVM configuration DB

        // AHB
{config_ahb}

        // APB
{config_apb}

        // AXI
{config_axi}

        //  Start UVM
        run_test();
    end
"""
tian.file.append(soc_tb_link, wdata)

ahb_if_names = []
apb_if_names = []
axi_if_names = []
for sheet_name in sheet_names:
    if ("ahb" in sheet_name): ahb_if_names.append(sheet_name.replace("_if", ""))
    if ("axi" in sheet_name): axi_if_names.append(sheet_name.replace("_if", ""))
    if ("apb" in sheet_name): apb_if_names.append(sheet_name.replace("_if", ""))

tian.jj2_write("./jj2_lib/soc_env.jj2", "./result/soc_env.sv", ahb_ifs=ahb_if_names, apb_ifs=apb_if_names, axi_ifs=axi_if_names)
