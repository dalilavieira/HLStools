export PATH=/opt/xilinx/Vivado/2019.1/tps/lnx64/binutils-2.26/bin:/opt/xilinx/Vivado/2019.1/tps/lnx64/gcc-6.2.0/bin:/opt/xilinx/Vivado/2019.1/msys64/usr/bin:/opt/xilinx/Vivado/2019.1/msys64/mingw64/bin:/opt/xilinx/Vivado/2019.1/bin:/opt/xilinx/Vivado/2019.1/lnx64/bin:/opt/xilinx/Vivado/2019.1/lnx64/tools/bin:/opt/xilinx/Vivado/2019.1/gnu/microblaze/lin/bin:/opt/xilinx/Vivado/2019.1/bin:/opt/xilinx/Vivado/2019.1/tps/lnx64/jre9.0.4/bin:/opt/xilinx/SDK/2019.1/bin:/opt/xilinx/Vivado/2019.1/ids_lite/ISE/bin/lin64:/opt/xilinx/SDK/2019.1/gnu/microblaze/lin/bin:/opt/xilinx/SDK/2019.1/gnu/arm/lin/bin:/opt/xilinx/SDK/2019.1/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/opt/xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/opt/xilinx/SDK/2019.1/gnu/aarch64/lin/aarch64-linux/bin:/opt/xilinx/SDK/2019.1/gnu/aarch64/lin/aarch64-none/bin:/opt/xilinx/SDK/2019.1/gnu/armr5/lin/gcc-arm-none-eabi/bin:/opt/xilinx/SDK/2019.1/tps/lnx64/cmake-3.3.2/bin:/opt/xilinx/DocNav:/opt/xilinx/SDx/2019.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export LD_LIBRARY_PATH=/opt/xilinx/Vivado/2019.1/lnx64/tools/gdb_v7_2:/opt/xilinx/Vivado/2019.1/tps/lnx64/dot-2.28/lib:/opt/xilinx/Vivado/2019.1/lnx64/bin:/opt/xilinx/Vivado/2019.1/lib/lnx64.o/Ubuntu/18:/opt/xilinx/Vivado/2019.1/lib/lnx64.o/Ubuntu:/opt/xilinx/Vivado/2019.1/lib/lnx64.o:/opt/xilinx/Vivado/2019.1/tps/lnx64/jre9.0.4/lib/:/opt/xilinx/Vivado/2019.1/tps/lnx64/jre9.0.4/lib//server:/opt/xilinx/SDx/2019.1/lib/lnx64.o/Ubuntu/18:/opt/xilinx/SDx/2019.1/lib/lnx64.o/Ubuntu:/opt/xilinx/SDx/2019.1/lib/lnx64.o:/opt/xilinx/SDx/2019.1/runtime/lib/x86_64:/opt/xilinx/Vivado/2019.1/bin/../lnx64/tools/dot/lib:/opt/xilinx/Vivado/2019.1/lnx64/tools/fpo_v7_0:/opt/xilinx/Vivado/2019.1/lnx64/tools/fft_v9_1:/opt/xilinx/Vivado/2019.1/lnx64/tools/opencv:/opt/xilinx/Vivado/2019.1/lnx64/tools/fir_v7_0:/opt/xilinx/Vivado/2019.1/lnx64/tools/dds_v6_0:/opt/xilinx/Vivado/2019.1/lnx64/lib/csim
export HDI_APPROOT=/opt/xilinx/Vivado/2019.1
export XILINX_OPENCL_CLANG=/opt/xilinx/Vivado/2019.1/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip -share-std-xform -demangle-name  -inline-byval-memcpy -always-inline -promote-dbg-pointer  -interface-preproc  -mem2reg   -scalarrepl -mem2reg -keep-read-access -instcombine -dce  -promote-dbg-pointer  -bitop-raise  -loop-simplify -indvarspre -indvars -loop-simplify -xunroll  -constprop -instcombine -simplifycfg -indvars  -simplifycfg -dce -globaldce  -basicaa  -simplifycfg -mem2reg -globalopt  -global-constprop -deadargelim -instcombine -simplifycfg  -prune-eh -simplifycfg  -scalarrepl -instcombine -reassociate -licm  -simplifycfg -loop-simplify -indvars -instcombine  -simplifycfg -mem2reg -loop-simplify -indvars -instcombine  -gvn -gvn -instcombine -adce  -break-crit-edges  -simplifycfg -loop-delete  -global-array-opt -dce -dse -adce  -find-syn-modules -top des_setkey  -deadargelim  -mem2reg -instcombine -dce  -presyn-prepare -auto-rom-infer  -interface-preproc  -syn-check -check-rec-only  -find-region -simplifycfg -func-extr -function-inline  -globaldce -mem2reg -instcombine -dce   -gvn -globaldce -adce -adse  -constprop -instcombine -bit-constprop  -instcombine -dce -simplifycfg -bitop-raise  -simplifycfg -dce -loop-delete -reassociate  -globalopt -global-privatize -mem2reg -dce  -global-constprop -pointer-simplify -constprop -dce  -func-inst -deadargelim  -auto-shift-reg-idiom  -promote-dbg-pointer  -norm-name  /home/vivado/HLStools/vivado/214_revisao/proj_extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c/sol/.autopilot/db/a.g.0.bc
llvm-dis bugpoint-reduced-simplified.bc 
