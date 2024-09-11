#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : incr_flow.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-05-04 17:18:28
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
run_options = ""
if (tian.argv.has_argument("-xml")):
    cfg_file    = tian.argv.get_argument_by_prefix("-xml")
    root        = tian.parse_xml(cfg_file)
    vcode_link  = root.find("vcode_link").text
    sim_dir     = root.find("sim_dir").text
    list_vip    = root.find("list_vip").text.split(" ")
    top_module  = root.find("top_module").text
    tb_link     = root.find("tb_link").text
    run_options = root.find("run_options").text
    tian.run("rm -rf argv.xml_dummy")
else:
    vcode_link = input("RTL vcode.f link: ")
    vcode_link = tian.realpath(vcode_link)
    sim_dir    = input("SIM dir: ")
    sim_dir    = tian.realpath(sim_dir)
    list_vip   = input("VIP initialize (ahb apb ...): ").split(" ")
    top_module = input("top module: ")
    tb_link    = input("tb link: ")

print(f"\n")
print_banner("Configuaration option")
print(f"vcode_link   = {vcode_link} ")
print(f"sim_dir      = {sim_dir}    ")
print(f"list_vip     = {list_vip}   ")
print(f"top_module   = {top_module} ")
print(f"tb_link      = {tb_link} ")
print(f"\n")

run(f"mkdir -p {sim_dir}")
sim_dir = tian.realpath(sim_dir)

#--------------------------------------------------------------------+
# argv.xml                                                           |
#--------------------------------------------------------------------+
argv_data = """<?xml version="1.0" encoding="UTF-8"?>
<component>
    <vcode_link>/mnt/users/tientq/PROJECT/nwp_dv/blksim/BLK_PCIE/RTL/vcode.f</vcode_link>
    <sim_dir>SIM</sim_dir>
    <list_vip>ahb apb axi</list_vip>
    <top_module>PCIE_TOP</top_module>
    <run_options>TODO</run_options>
</component>
"""

if not tian.is_file("argv.xml"):
    tian.file.write("argv.xml", argv_data)
    print("Please suply variable in argv.xml")
    exit()

#--------------------------------------------------------------------+
# 00_build_cdn_vip.csh                                               |
#--------------------------------------------------------------------+
cdn_vips_string = " ".join(list_vip)

build_cdn_vip = f"""#!/usr/bin/csh
set sim_dir={sim_dir}

rm    -rf $sim_dir/compile/cdn-vip-lib
mkdir -p  $sim_dir/compile/cdn-vip-lib
cd        $sim_dir/compile/cdn-vip-lib

$CDNS_VIP_HOME/$CDNS_ARCH/bin/cdn_vip_setup_env \\
    -64 -v -m sv_uvm -s xmsim \\
    -cdn_vip_root $CDNS_VIP_HOME -csh \\
    -uvmver 1.2 \\
    -cdn_vip_lib cdn_vip_lib -i \"{cdn_vips_string}\"
"""
tian.file.write("00_build_cdn_vip.csh", build_cdn_vip)

#--------------------------------------------------------------------+
# 01_compile_rtl.csh                                                 |
#--------------------------------------------------------------------+
compile_rtl = f"""#!/usr/bin/csh
set vcode_link={vcode_link}
set sim_dir={sim_dir}

rm    -rf $sim_dir/compile/build-rtl
mkdir -p  $sim_dir/compile/build-rtl
cd        $sim_dir/compile/build-rtl

xrun \\
	-sv -64 -access +rcw \\
    -compile \\
    -makelib $sim_dir/compile/build-rtl/rtl_lib \\
	-f $vcode_link \\
    -endlib \\
    -l compile.log \\

echo '#'
echo '# compile.log: {sim_dir}/compile/build-rtl/compile.log'
echo '#'
"""

tian.file.write("01_compile_rtl.csh", compile_rtl)

#--------------------------------------------------------------------+
# 02_save.csh                                                        |
#--------------------------------------------------------------------+
required_base_vip = r"""-incdir $DENALI/ddvapi/sv/uvm/cdn_vipname \
    $DENALI/ddvapi/sv/denaliCdn_vipname.sv \
    $DENALI/ddvapi/sv/uvm/cdn_vipname/cdnVipnameUvmTop.sv \
    -top cdnVipnameUvm \
    """

requied_vip = ""
for vipname in list_vip:
    Vipname = tian.change_char_by_index(vipname, 0, vipname[0].upper())
    requied_vip += required_base_vip.replace("vipname", vipname).replace("Vipname", Vipname)
    requied_vip = requied_vip.replace("cdn_pcie"         , "pcie")
    requied_vip = requied_vip.replace("denaliCdn_pcie.sv", "denaliPcie.sv")

save = f"""#!/usr/bin/csh
set top_module={top_module}
set sim_dir={sim_dir}

source $sim_dir/compile/cdn-vip-lib/cdn_vip_env_xrun_sv_uvm_64.csh

rm    -rf $sim_dir/compile/build-save
mkdir -p  $sim_dir/compile/build-save
cd        $sim_dir/compile/build-save

xrun \\
    -clean -noupdate -64 \\
    -sv -c  \\
    -elaborate \\
    -access +rwc -licq \\
    -disable_sem2009 \\
	-timescale 1ns/1ns \\
    \\
    -loadpli1 debpli:novas_pli_boot \\
    -loadvpi $DENALI/verilog/libcdnsv.so:cdnsvVIP:export \\
    -sv_lib $CDN_VIP_LIB_PATH/64bit/libcdnvipuvmdpi.so \\
    -xmsimargs "-loadrun $CDN_VIP_LIB_PATH/64bit/libcdnvipcuvm.so" \\
    \\
    -define DENALI_UVM \\
    -define CDN_AUTO_TEST \\
    -uvm \\
    -uvmhome CDNS-1.2 \\
    \\
    -incdir $DENALI/ddvapi/sv/ \\
    $DENALI/ddvapi/sv/denaliMem.sv \\
    {requied_vip}\\
    \\
    -reflib $sim_dir/compile/build-rtl/rtl_lib \\
    -top $top_module \\
    \\
    -mkprimsnap \\
    -href {curdir}/autohref.txt \\
    -href "@top *" \\
    -snapshot dut \\
    -l save.log \\

echo '#'
echo '# save.log: {sim_dir}/compile/build-save/save.log'
echo '#'
"""

tian.file.write("02_save.csh", save)

#--------------------------------------------------------------------+
# 03_run.csh                                                         |
#--------------------------------------------------------------------+
run = f"""#!/usr/bin/csh
set testbench_link={tb_link}
set tb_top=tb
set sim_dir={sim_dir}
set testname=usr_blk_test_c

if ($#argv == 1) then
    set testseq=$argv[1]
else 
    echo "Wrong command"
    echo "./03_run.csh <seq_name>"
    exit 1
endif

source $sim_dir/compile/cdn-vip-lib/cdn_vip_env_xrun_sv_uvm_64.csh

rm    -rf $sim_dir/$testname-$testseq
mkdir -p  $sim_dir/$testname-$testseq

cp dump_fsdb.tcl $sim_dir/$testname-$testseq
cd        $sim_dir/$testname-$testseq

xrun \\
    -clean -noupdate -64 \\
    -sv \\
    -define DENALI_UVM \\
    -define CDN_AUTO_TEST \\
    -define UVM_NO_DEPRECATED \\
    -access +rwc -licq \\
    -nowarn CUVIHR \\
    -nowarn FUNTSK \\
    -notimingcheck \\
    -uvm \\
    -uvmhome CDNS-1.2 \\
    \\
    -disable_sem2009 \\
	-timescale 1ns/1ns \\
    -input dump_fsdb.tcl \\
    -loadpli1 debpli:novas_pli_boot \\
    -loadvpi $DENALI/verilog/libcdnsv.so:cdnsvVIP:export \\
    -sv_lib $CDN_VIP_LIB_PATH/64bit/libcdnvipuvmdpi.so \\
    -xmsimargs "-loadrun $CDN_VIP_LIB_PATH/64bit/libcdnvipcuvm.so" \\
    \\
    {run_options}\\
    -f $testbench_link \\
	-top $tb_top \\
    -primname dut@{sim_dir}/compile/build-save \\
	+access+rcw \\
    +UVM_TESTNAME=$testname \\
    +uvm_set_type_override=soc_test_vseq_c,$testseq \\
"""

tian.file.write("03_run.csh", run)

dump_fsdb = f"""
call fsdbDumpfile all.fsdb
call fsdbDumpvars 0 {top_module} +all
call fsdbDumpSVA  0 {top_module}
run
exit
"""

tian.file.write("dump_fsdb.tcl", dump_fsdb)


tian.run("chmod 777 00_build_cdn_vip.csh")
tian.run("chmod 777 01_compile_rtl.csh")
tian.run("chmod 777 02_save.csh")
tian.run("chmod 777 03_run.csh")

print_banner("Note: $LD_LIBRARY_PATH cannot set by csh file, pls add it to env.csh then execute by 'source'")
