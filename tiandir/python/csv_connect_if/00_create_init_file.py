#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : main.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-03-22 12:27:38
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

def apb_init_sheet(iworkexcel, sheet):
    sheet['A1'].value = 'Type'
    sheet['B1'].value = 'Signal'
    sheet['C1'].value = 'tb hierachy'
    sheet['D1'].value = 'top hierachy'

    iworkexcel.resize_col(sheet['A1'], 15)
    iworkexcel.resize_col(sheet['B1'], 20)
    iworkexcel.resize_col(sheet['C1'], 50)
    iworkexcel.resize_col(sheet['D1'], 50)

    sheet['A2'].value  = 'input'  ; sheet['B2'].value  = 'clk'      ; sheet['C2'].value  = f'{sheet.title}.clk'
    sheet['A3'].value  = 'input'  ; sheet['B3'].value  = 'resetn'   ; sheet['C3'].value  = f'{sheet.title}.resetn'
    sheet['A4'].value  = 'input'  ; sheet['B4'].value  = 'pslverr'  ; sheet['C4'].value  = f'{sheet.title}.pslverr'
    sheet['A5'].value  = 'input'  ; sheet['B5'].value  = 'prdata'   ; sheet['C5'].value  = f'{sheet.title}.prdata'
    sheet['A6'].value  = 'input'  ; sheet['B6'].value  = 'pready'   ; sheet['C6'].value  = f'{sheet.title}.pready'
    sheet['A7'].value  = 'output' ; sheet['B7'].value  = 'paddr'    ; sheet['C7'].value  = f'{sheet.title}.paddr'
    sheet['A8'].value  = 'output' ; sheet['B8'].value  = 'penable'  ; sheet['C8'].value  = f'{sheet.title}.penable'
    sheet['A9'].value  = 'output' ; sheet['B9'].value  = 'psel0'    ; sheet['C9'].value  = f'{sheet.title}.psel0'
    sheet['A10'].value = 'output' ; sheet['B10'].value = 'pwdata'   ; sheet['C10'].value = f'{sheet.title}.pwdata'
    sheet['A11'].value = 'output' ; sheet['B11'].value = 'pwrite'   ; sheet['C11'].value = f'{sheet.title}.pwrite'

    iworkexcel.fmt_table_allcell(sheet)

def ahb_init_sheet(iworkexcel, sheet):
    sheet['A1'].value = 'Type'
    sheet['B1'].value = 'Signal'
    sheet['C1'].value = 'tb hierachy'
    sheet['D1'].value = 'top hierachy'

    iworkexcel.resize_col(sheet['A1'], 15)
    iworkexcel.resize_col(sheet['B1'], 20)
    iworkexcel.resize_col(sheet['C1'], 50)
    iworkexcel.resize_col(sheet['D1'], 50)

    sheet['A2'].value  = 'input'  ; sheet['B2'].value  = 'HCLK'      ; sheet['C2'].value  = f'{sheet.title}.HCLK'
    sheet['A3'].value  = 'input'  ; sheet['B3'].value  = 'HRESET'    ; sheet['C3'].value  = f'{sheet.title}.HRESET'
    sheet['A4'].value  = 'input'  ; sheet['B4'].value  = 'HRESP'     ; sheet['C4'].value  = f'{sheet.title}.HRESP'
    sheet['A5'].value  = 'input'  ; sheet['B5'].value  = 'HREADY'    ; sheet['C5'].value  = f'{sheet.title}.HREADY'
    sheet['A6'].value  = 'input'  ; sheet['B6'].value  = 'HRDATA'    ; sheet['C6'].value  = f'{sheet.title}.HRDATA'
    sheet['A7'].value  = 'output' ; sheet['B7'].value  = 'HADDR'     ; sheet['C7'].value  = f'{sheet.title}.HADDR'
    sheet['A8'].value  = 'output' ; sheet['B8'].value  = 'HBURST'    ; sheet['C8'].value  = f'{sheet.title}.HBURST'
    sheet['A9'].value  = 'output' ; sheet['B9'].value  = 'HMASTER'   ; sheet['C9'].value  = f'{sheet.title}.HMASTER'
    sheet['A10'].value = 'output' ; sheet['B10'].value = 'HMASTLOCK' ; sheet['C10'].value = f'{sheet.title}.HMASTLOCK'
    sheet['A11'].value = 'output' ; sheet['B11'].value = 'HPROT'     ; sheet['C11'].value = f'{sheet.title}.HPROT'
    sheet['A12'].value = 'output' ; sheet['B12'].value = 'HSIZE'     ; sheet['C12'].value = f'{sheet.title}.HSIZE'
    sheet['A13'].value = 'output' ; sheet['B13'].value = 'HSTRB'     ; sheet['C13'].value = f'{sheet.title}.HSTRB'
    sheet['A14'].value = 'output' ; sheet['B14'].value = 'HTRANS'    ; sheet['C14'].value = f'{sheet.title}.HTRANS'
    sheet['A15'].value = 'output' ; sheet['B15'].value = 'HWDATA'    ; sheet['C15'].value = f'{sheet.title}.HWDATA'
    sheet['A16'].value = 'output' ; sheet['B16'].value = 'HWRITE'    ; sheet['C16'].value = f'{sheet.title}.HWRITE'
    iworkexcel.fmt_table_allcell(sheet)

def axi_init_sheet(iworkexcel, sheet):
    sheet['A1'].value = 'Type'
    sheet['B1'].value = 'Signal'
    sheet['C1'].value = 'tb hierachy'
    sheet['D1'].value = 'top hierachy'

    iworkexcel.resize_col(sheet['A1'], 15)
    iworkexcel.resize_col(sheet['B1'], 20)
    iworkexcel.resize_col(sheet['C1'], 50)
    iworkexcel.resize_col(sheet['D1'], 50)

    # axi slave
    is_axi_slave = ((sheet.title[-2] + sheet.title[-1]) == "_s")

    sheet['A2'].value  = 'input'                                         ; sheet['B2'].value  = 'aclk'    ; sheet['C2'].value  = f'{sheet.title}.aclk'   
    sheet['A3'].value  = 'input'                                         ; sheet['B3'].value  = 'aresetn' ; sheet['C3'].value  = f'{sheet.title}.aresetn'
    sheet['A4'].value  = 'input' if (is_axi_slave == False) else 'output'; sheet['B4'].value  = 'arready' ; sheet['C4'].value  = f'{sheet.title}.arready'
    sheet['A5'].value  = 'input' if (is_axi_slave == False) else 'output'; sheet['B5'].value  = 'awready' ; sheet['C5'].value  = f'{sheet.title}.awready'
    sheet['A6'].value  = 'input' if (is_axi_slave == False) else 'output'; sheet['B6'].value  = 'bid'     ; sheet['C6'].value  = f'{sheet.title}.bid'    
    sheet['A7'].value  = 'input' if (is_axi_slave == False) else 'output'; sheet['B7'].value  = 'bresp'   ; sheet['C7'].value  = f'{sheet.title}.bresp'  
    sheet['A8'].value  = 'input' if (is_axi_slave == False) else 'output'; sheet['B8'].value  = 'bvalid'  ; sheet['C8'].value  = f'{sheet.title}.bvalid' 
    sheet['A9'].value  = 'input' if (is_axi_slave == False) else 'output'; sheet['B9'].value  = 'cactive' ; sheet['C9'].value  = f'{sheet.title}.cactive'
    sheet['A10'].value = 'input' if (is_axi_slave == False) else 'output'; sheet['B10'].value = 'rdata'   ; sheet['C10'].value = f'{sheet.title}.rdata'  
    sheet['A11'].value = 'input' if (is_axi_slave == False) else 'output'; sheet['B11'].value = 'rid'     ; sheet['C11'].value = f'{sheet.title}.rid'    
    sheet['A12'].value = 'input' if (is_axi_slave == False) else 'output'; sheet['B12'].value = 'rlast'   ; sheet['C12'].value = f'{sheet.title}.rlast'  
    sheet['A13'].value = 'input' if (is_axi_slave == False) else 'output'; sheet['B13'].value = 'rresp'   ; sheet['C13'].value = f'{sheet.title}.rresp'  
    sheet['A14'].value = 'input' if (is_axi_slave == False) else 'output'; sheet['B14'].value = 'rvalid'  ; sheet['C14'].value = f'{sheet.title}.rvalid' 
    sheet['A15'].value = 'input' if (is_axi_slave == False) else 'output'; sheet['B15'].value = 'wready'  ; sheet['C15'].value = f'{sheet.title}.wready' 

    sheet['A16'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B16'].value = 'araddr'  ; sheet['C16'].value = f'{sheet.title}.araddr' 
    sheet['A17'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B17'].value = 'arburst' ; sheet['C17'].value = f'{sheet.title}.arburst'
    sheet['A18'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B18'].value = 'arcache' ; sheet['C18'].value = f'{sheet.title}.arcache'
    sheet['A19'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B19'].value = 'arid'    ; sheet['C19'].value = f'{sheet.title}.arid'   
    sheet['A20'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B20'].value = 'arlen'   ; sheet['C20'].value = f'{sheet.title}.arlen'  
    sheet['A21'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B21'].value = 'arlock'  ; sheet['C21'].value = f'{sheet.title}.arlock' 
    sheet['A22'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B22'].value = 'arprot'  ; sheet['C22'].value = f'{sheet.title}.arprot' 
    sheet['A23'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B23'].value = 'arqos'   ; sheet['C23'].value = f'{sheet.title}.arqos'  
    sheet['A24'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B24'].value = 'arsize'  ; sheet['C24'].value = f'{sheet.title}.arsize' 
    sheet['A25'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B25'].value = 'aruser'  ; sheet['C25'].value = f'{sheet.title}.aruser' 
    sheet['A26'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B26'].value = 'arvalid' ; sheet['C26'].value = f'{sheet.title}.arvalid'
    sheet['A27'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B27'].value = 'awaddr'  ; sheet['C27'].value = f'{sheet.title}.awaddr' 
    sheet['A28'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B28'].value = 'awburst' ; sheet['C28'].value = f'{sheet.title}.awburst'
    sheet['A29'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B29'].value = 'awcache' ; sheet['C29'].value = f'{sheet.title}.awcache'
    sheet['A30'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B30'].value = 'awid'    ; sheet['C30'].value = f'{sheet.title}.awid'   
    sheet['A31'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B31'].value = 'awlen'   ; sheet['C31'].value = f'{sheet.title}.awlen'  
    sheet['A32'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B32'].value = 'awlock'  ; sheet['C32'].value = f'{sheet.title}.awlock' 
    sheet['A33'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B33'].value = 'awprot'  ; sheet['C33'].value = f'{sheet.title}.awprot' 
    sheet['A34'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B34'].value = 'awqos'   ; sheet['C34'].value = f'{sheet.title}.awqos'  
    sheet['A35'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B35'].value = 'awsize'  ; sheet['C35'].value = f'{sheet.title}.awsize' 
    sheet['A36'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B36'].value = 'awuser'  ; sheet['C36'].value = f'{sheet.title}.awuser' 
    sheet['A37'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B37'].value = 'awvalid' ; sheet['C37'].value = f'{sheet.title}.awvalid'
    sheet['A38'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B38'].value = 'bready'  ; sheet['C38'].value = f'{sheet.title}.bready' 
    sheet['A39'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B39'].value = 'buser'   ; sheet['C39'].value = f'{sheet.title}.buser'  
    sheet['A40'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B40'].value = 'rready'  ; sheet['C40'].value = f'{sheet.title}.rready' 
    sheet['A41'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B41'].value = 'ruser'   ; sheet['C41'].value = f'{sheet.title}.ruser'  
    sheet['A42'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B42'].value = 'wdata'   ; sheet['C42'].value = f'{sheet.title}.wdata'  
    sheet['A43'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B43'].value = 'wlast'   ; sheet['C43'].value = f'{sheet.title}.wlast'  
    sheet['A44'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B44'].value = 'wstrb'   ; sheet['C44'].value = f'{sheet.title}.wstrb'  
    sheet['A45'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B45'].value = 'wuser'   ; sheet['C45'].value = f'{sheet.title}.wuser'  
    sheet['A46'].value = 'output' if (is_axi_slave == False) else 'input'; sheet['B46'].value = 'wvalid'  ; sheet['C46'].value = f'{sheet.title}.wvalid' 
    iworkexcel.fmt_table_allcell(sheet)

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
if_name_list = sys.argv
if len(sys.argv) == 1:
    print("Please suply interface names")
    print("    $ py 00_create_init_file axi_dbi apb_x4 ahp_mstr")
    exit()

tian.run("rm -rf tmp.xlsx")
excel.create_excel_file("tmp.xlsx")

workexcel = excel("tmp.xlsx")
workbook  = workexcel.wb

run("mkdir -p inout")
for if_name in if_name_list:
    if (if_name == "00_create_init_file.py"):
        continue
    workexcel.create_sheet(if_name)

    if (tian.is_file(f"inout/{if_name}") == False):
        run(f"touch  inout/{if_name}")
        print(f"Create file: ./inout/{if_name}")

workexcel.remove_sheet("Sheet")

all_sheets = workbook.get_sheet_names()

for sheet_name in all_sheets:
    if ('apb' in sheet_name):
        apb_init_sheet(workexcel, workbook[sheet_name])
    if ('axi' in sheet_name):
        axi_init_sheet(workexcel, workbook[sheet_name])
    if ('ahb' in sheet_name):
        ahb_init_sheet(workexcel, workbook[sheet_name])

    
workexcel.save("tmp.xlsx")

