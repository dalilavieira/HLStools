# Set the variable to zero if not set.
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -legup-startup -HYBRID_FLOW=0 /dev/null -o /dev/null
mkdir -p ./.legup
mkdir -p ./.legup/./
mkdir -p ./reports/
mkdir -p ./reports/dot_graphs/
mkdir -p ./mem_init/
# this code walks over every file in SRCS and runs:
# 1. Script mark_labels.pl to find all for loops with a label. For example:
# 		loop1: for (int i = 0; i < N; i++))
#    Which creates an almost identical new source file (name_labeled.c) but
#    with a call to:
#    	__legup_label("loop1")
#    in the body of the loop. This allows LegUp to detect which loops to
#    pipeline during loop pipelining
# Original C files: dir1/a.c dir2/b.c
# New C files: 	    dir1/a_labeled.c dir2/b_labeled.c
/cygdrive/c/LegUp-7.5/legup/examples/mark_labels.pl kmeans.c > kmeans_labeled.c;
# If HYBRID isn't specified, set this variable to 0. We need to default to 0, since when this variable
# is passed in an argument into an opt pass (see legup-parallel-api), giving it an empty value will also set the argument to true..
# produces pre-link time optimization binary bitcode: ./.legup/kmeans.prelto.bc
# need to put noinling, to preserve function boundaries first
# 2. Runs frontend (choose Clang or Dragonegg depending on whether OpenMP is used)
# on the new name_labeled.c source file to create ./.legup/name_labeled.bc
# Frontend also uses llvm-link to link all the .bc files (without optimizations)
# to produce kmeans.prelto.1.bc
# If not using OpenMP, use Clang
clang-3.5.2 kmeans_labeled.c -emit-llvm -c -D__LEGUP__  -I/cygdrive/c/LegUp-7.5/legup/examples/../dependencies/include -I/cygdrive/c/LegUp-7.5/legup/examples/../dependencies/gcc/include/c++/5.4.0 -I/cygdrive/c/LegUp-7.5/legup/examples/../dependencies/gcc/include/c++/5.4.0/x86_64-unknown-linux-gnu/ -m32 -I /usr/include/i386-linux-gnu -D LEGUP_DEFAULT_FIFO_DEPTH=2 -O3 -fno-builtin -I C:/LegUp-7.5/legup/examples/lib/include/ -I C:/LegUp-7.5/legup/legup-library -I/cygdrive/c/LegUp-7.5/legup/legup-library  -I/cygdrive/c/LegUp-7.5/legup/examples/../dependencies/include -I/cygdrive/c/LegUp-7.5/legup/examples/../dependencies/gcc/include/c++/5.4.0 -I/cygdrive/c/LegUp-7.5/legup/examples/../dependencies/gcc/include/c++/5.4.0/x86_64-unknown-linux-gnu/ -fno-vectorize -fno-slp-vectorize -Werror=implicit-function-declaration -Wno-ignored-attributes -fno-exceptions -D __LEGUP__ -I C:/LegUp-7.5/legup/include -I C:/LegUp-7.5/cygwin64/usr/include -I C:/LegUp-7.5/cygwin64/lib/gcc/x86_64-pc-cygwin/5.4.0/include/c++ -I C:/LegUp-7.5/cygwin64/lib/gcc/x86_64-pc-cygwin/5.4.0/include/c++/x86_64-pc-cygwin -g -mllvm -inline-threshold=-9999 -o ./.legup/kmeans_labeled.bc || { rm -f kmeans_labeled.c && false; };
#mv kmeans_labeled.c ./.legup  # this breaks eclipse
rm -f kmeans_labeled.c
# Then uses llvm-link to link all the .bc file (without optimizations)
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/llvm-link  ./.legup/kmeans_labeled.bc -o ./.legup/kmeans.prelto.1.bc; 
# Remove debug info if the TCL parameter REMOVE_DEBUG_INFO is set.
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -remove-debug-info ./.legup/kmeans.prelto.1.bc -o ./.legup/kmeans.prelto.1.bc
# Set the variable to zero if not set.
#---------------------------------------------------------------------------#
#--------------------- IR TRANSFORMATIONS START HERE -----------------------#
#---------------------------------------------------------------------------#
# perform any pre-processing that has to be done, before any optimization passes are run. 
# This needs to run first before running any optimizations so that functions boundaries don't disappear
# for pipelined functions, set_custom_top_level, and functions marked with noinline tcl, add the noinline attribute
# also flatten/inline any functions marked as flatten_function/inline_function.
# Run always-inline pass right afterwards to inline any functions marked with AlwaysInline attribute
# Also modify the IRs to support axi slave interface, which includes
#  1. insert FIFOs to the beginning of main()
#  2. create a new top level function
#  3. call the original top level function + 2 slave functions (read and write) within the new top level
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -legup-preprocessing -always-inline -axi-interface -std-link-opts -break-constgeps -loweratomic ./.legup/kmeans.prelto.1.bc -o ./.legup/kmeans.preprocessing.bc
# annotated top-level pointer and global variables and remove sw testbench
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -legup-sc-parser  -annotate-toplevel-ptrargs -ANALYZE_WHOLE_PROGRAM=1 -before-removing-tb=1 -removeswtestbench ./.legup/kmeans.preprocessing.bc -o ./.legup/kmeans.swremoved.bc
# lower special types
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -arbitrary-bitwidth -legup-lower-sc ./.legup/kmeans.swremoved.bc -o ./.legup/kmeans.lower.int.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -break-constgeps -legup-lower-ap ./.legup/kmeans.lower.int.bc -o ./.legup/kmeans.lower.ap.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -data-pack -split-legup-force-reg ./.legup/kmeans.lower.ap.bc -o ./.legup/kmeans.lower.datapack.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -legup-lower-fifos ./.legup/kmeans.lower.datapack.bc -o ./.legup/kmeans.lower.fifo.bc
# inline pass must be run after to inline attribute functions
# globaldce is run to get rid of function definitions that are no longer necessary due to all call sites being inlined
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -basiccg -inline-cost -inline -globalopt -globaldce ./.legup/kmeans.lower.fifo.bc -o ./.legup/kmeans.lower.bc
# run standard optimizations now to optimize the program  
# std-link-opts also includes argument promotion, which is where we want struct of FIFOs to be promoted to
# individual arguments of FIFOs 
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -std-link-opts ./.legup/kmeans.lower.bc -o ./.legup/kmeans.stdlinkopts.bc
# run std-compile-opts to optimize the program more. This reduced the cycle count for many pipelining benchmarks
# pipeline/correlation, pipeline/accumulate, pipeline/two_loops, pipeline/unroll_loop_nest_depth_*
# We must run std-link-opts then std-compile-opts afterwards. Running std-compile-opts actually broke the IR for some
# hybrid benchmarks: dfadd_shift64RightJamming, dfsin_shift64RightJamming, dfmul_mul64to128
# produced incorrect results for: motion_motion_vectors
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -std-compile-opts ./.legup/kmeans.stdlinkopts.bc -o ./.legup/kmeans.stdcompileopts.bc	
# performs intrinsic lowering 
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-prelto ./.legup/kmeans.stdcompileopts.bc -o ./.legup/kmeans.legupprelto.bc
# perform link-time optimizations
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -std-link-opts ./.legup/kmeans.legupprelto.bc -o ./.legup/kmeans.stdlinkopts2.bc
# link libraries
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/llvm-link  ./.legup/kmeans.stdlinkopts2.bc /cygdrive/c/LegUp-7.5/legup/examples/lib/llvm/liblegup.bc /cygdrive/c/LegUp-7.5/legup/examples/lib/llvm/liblegupParallel.bc /cygdrive/c/LegUp-7.5/legup/examples/lib/llvm/libm.bc -o ./.legup/kmeans.postlto.6.bc	
# remove all unused functions from linking with liblegup and libm
# running -internalize seems to allow to remove unused functions
# when NO_INLINE=1, std-link-opts doesn't remove functions even when they're unused
# internalize removes them, but internalize-public-api is needed to prevent the entire program from being optimized away
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -internalize-public-api-list=main -globaldce -std-link-opts -internalize ./.legup/kmeans.postlto.6.bc -o ./.legup/kmeans.postlto.8.bc
# check for unsupported C features 
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -legup-code-support-checking -HYBRID_FLOW=0 ./.legup/kmeans.postlto.8.bc -o /dev/null
# arbitrary bitwidth
# need to run this after legup-prelto, as legup-prelto replaces some functions which causes some bitwidth data to be lost
# but this pass also needs to be run sufficiently early, so that variables can be optimized when we remove llvm.annotation
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-process-bw -legup-prop-bw ./.legup/kmeans.postlto.8.bc -o ./.legup/kmeans.ab.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -indvars2 -mem2reg -simplifycfg -loops -lcssa -loop-simplify -loop-rotate ./.legup/kmeans.ab.bc -o ./.legup/kmeans.looprotate.bc
# inline any necessary functions
# this must be run right before legup-unroll, since for pipelined BBs, we only inline calls in them 
# if all of the loops in the descendant functions can also be unrolled. So we check in this pass whether they can be
# fully inlined and unrolled, then performing inlining of the call sites, and the actual unrolling is done
# in the legup-unroll pass. 
# The inliner pass also handles other inlining cases outside of pipelining
# run globaldce here to delete the unused functions after inlining
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-inliner -HYBRID_FLOW=0 -globaldce ./.legup/kmeans.looprotate.bc -o ./.legup/kmeans.inline.bc
# unroll all loops inside function pipeline, or if it calls pthread_create inside the loop
# this has to run before legup-parallel-api
# we MUST run lcssa before the unrolling pass, otherwise the unrolled IR could be broken (examples/pipeline/inline_and_unroll_loop_nest_dept_2)
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -lcssa -legup-unroll ./.legup/kmeans.inline.bc -o ./.legup/kmeans.unroll.bc
# after unrolling, we can now merge loop nests.
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -loops -lcssa -loop-simplify -indvars2 -legup-loop-nest-merge -simplifycfg -dce ./.legup/kmeans.unroll.bc -o ./.legup/kmeans.loop_nest_merged.bc
# run this to break up constant GEPs and bitcasts, such as
# store i32 43, i32* getelementptr inbounds ([32 x i32]* @key, i32 0, i32 0), align 4, !tbaa !1
# these are part of another instruction, and thus hard to handle correctly
# this pass break it up to separate instructions again
# this needs to run before voidptr-argpromotion pass
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1 -break-constgeps ./.legup/kmeans.loop_nest_merged.bc -o ./.legup/kmeans.breakgeps.bc
# transform pthread functions to legup functions
# we need to run std-link-opts before here to make functions have "local linkage"
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-parallel-api -HYBRID_FLOW=0 ./.legup/kmeans.breakgeps.bc -o ./.legup/kmeans.parallel.bc
# promote void* arguments (pthread arguments) to typed arguments
# this needs to run after legup-parallel-api pass
# run globaldce here to delete the old functions
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -voidptr-argpromotion -dce -globaldce ./.legup/kmeans.parallel.bc -o ./.legup/kmeans.voidptr.bc
# need to run instcome and std-link-opts before mem-partition so that it removes indirection of a fifo ptr 
# being stored to a struct of fifo ptr ptr and loading from the struct to pass into function as fifo ptr (used for pthreads)
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -instcombine -std-link-opts -break-constgeps ./.legup/kmeans.voidptr.bc -o ./.legup/kmeans.voidptropt.bc
# run mem-partition to split up memory if possible (mainly targeting structs variables and arguments)
# run dce + globaldce to clean up leftover instructions and global variables
# this needs to run after voidptr-argpromotion pass, so that void* arguments have been promoted already
# Make sure DCE runs after axi-interface pass so that the pass can still find the dead global variable.
# break-constgeps needs to run before memory partition pass in order for the pass to work properly
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -mem-partition -axi-interface -axi-rm-unused-mem-only -dce -deadargelim -dce -globaldce ./.legup/kmeans.voidptropt.bc -o ./.legup/kmeans.mp.bc
# annotate fifo function arguments with their widths and as input/output FIFOs
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-sc-fsm-generator -annotate-toplevel-ptrargs ./.legup/kmeans.mp.bc -o ./.legup/kmeans.fifo.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-handle-static-objects -dce ./.legup/kmeans.fifo.bc -o ./.legup/kmeans.static.bc
# 
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -mergereturn -legup-ga2l -dce -mem2reg ./.legup/kmeans.static.bc -o ./.legup/kmeans.ga2l.1.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -break-crit-edges -legup-ga2l -break-exit-stores -simplifycfg ./.legup/kmeans.ga2l.1.bc -o ./.legup/kmeans.ga2l.bc
# perform link-time optimizations
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -instcombine -std-link-opts ./.legup/kmeans.ga2l.bc -o ./.legup/kmeans.postlto.bc
# lower any ap_int/ap_uint/ap_num that have not been lowered at this point. Generally means they exist as top level arguments
# /cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -break-constgeps -legup-lower-ap ./.legup/kmeans.postlto.bc -o ./.legup/kmeans.lower.ap.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -break-constgeps -legup-struct-support-checking ./.legup/kmeans.postlto.bc -o ./.legup/kmeans.check.struct.bc
# At this stage all AP types at the top level have been lowered to iX pointers; we can now promote AP arguments that should be passed by value
# and AP return values that should be returned by value into iX at the top level.
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-promote-ap ./.legup/kmeans.check.struct.bc -o ./.legup/kmeans.promoted.ap.bc
cp ./.legup/kmeans.promoted.ap.bc ./.legup/kmeans.ap.1.bc
# iterative modulo scheduling (with instcombine, removing instcombine makes pipeline/accumulate produce wrong result)
# inst-combine needs to run before loop pipelining, since there are sometimes phi's with only one incoming block
# in which case loop pipelining crashes, inst-combine get rid of these phi's
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -basicaa -loop-simplify -indvars2 -instcombine -gvn -legup-strength-reduction -legup-expr-tree-balance -legup-store-merge ./.legup/kmeans.ap.1.bc -o ./.legup/kmeans.preifconv.1.bc
# These passes are run before COMBINE_BB_PASS as a preprocessing
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -lowerswitch -simplifycfg ./.legup/kmeans.preifconv.1.bc -o ./.legup/kmeans.preifconv.2.bc
#/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-combine-bb -combine-bb-aggressive=1 -combine-bb=1 -loops-only=0 -generate-merge-rpt ./.legup/kmeans.preifconv.2.bc -o ./.legup/kmeans.ifconv.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-if-conversion ./.legup/kmeans.preifconv.2.bc -o ./.legup/kmeans.ifconv.bc
# slow to invoke another make on cygwin. Add to dependency instead.
#make PostIfconv_IRtransformations
# Set the variable to zero if not set.
#---------------------------------------------------------------------------#
#-----------------Post ifconv TRANSFORMATIONS START HERE -------------------#
#---------------------------------------------------------------------------#
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -simplifycfg ./.legup/kmeans.ifconv.bc -o ./.legup/kmeans.ifconv.1.bc
#/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -instcombine -gvn -legup-strength-reduction ./.legup/kmeans.ifconv.bc -o ./.legup/kmeans.ifconv.1.bc
# GVN sometimes replaces the predicate instruction with another instruction, even with legup_preserve (legup_preserve holds the replaced instruction). 
# When the instruction is replaced, the metadata doesn't follow, so LegUp crashes. BugZilla #174 
# instcombine was removed from this line (was run right before GVN), 
# since it was also replacing instructions with metadata, and causing circuits 
# (benchmarks/LegUp/pthreads/loop_pipelining/k-means/single) to produce wrong result. 
#
# Running argument promotion after if-conversion allows some FIFO** to be promoted to FIFO* (network_stack/arp_server)
# Re-run annotate fifo arguments pass after promoting FIFO pointers
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -loop-simplify -indvars2 -instcombine -gvn -legup-strength-reduction -argpromotion -annotate-fifoarguments ./.legup/kmeans.ifconv.1.bc -o ./.legup/kmeans.ifconv.2.bc
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -legup-reduce-latency -legup-reduce-latency-annotate-depth -fuse-ops -bit-manipulation -globaldce -adce -annotate-legup-force-reg ./.legup/kmeans.ifconv.2.bc -o ./.legup/kmeans.finaloptimizedir.bc
# Restore predicate metadata with restore-metadata
rm -f reports/pipelining.legup.rpt
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/opt -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -vectorizer-min-trip-count=1000000 -slp-threshold=1000000 -force-vector-width=1 -simplifycfg-disable-switchtolookup -instcombine-disable-foldphiload  -after-clang=1  -restore-metadata -basicaa -loop-pipeline -function-pipeline -HYBRID_FLOW=0 ./.legup/kmeans.finaloptimizedir.bc -o ./.legup/kmeans.bc
# NOTE: no passes which modify the IR should be run after -loop-pipeline
# and -function-pipeline, as this will cause the pipelining schedule
# to break!
#---------------------------------------------------------------------------#
#--------------------- IR TRANSFORMATIONS END HERE -------------------------#
#---------------------------------------------------------------------------#
# Set the variable to zero if not set.
/cygdrive/c/LegUp-7.5/legup/examples/../llvm/Release+Asserts/bin/llc -legup-config=/cygdrive/c/LegUp-7.5/legup/examples/legup.tcl -legup-config=config.tcl -march=v -HYBRID_FLOW=0 -LEGUP_ACCELERATOR_FILENAME=kmeans ./.legup/kmeans.bc -o kmeans.v
# much slower to invoke make multiple times on cygwin. Instead add these
# as dependencies.
#make startup
#make Frontend OPENMP= # Run the frontend compiler
#make IRtransformations  # Perform IR transformations
#make Backend # Run Verilog/Hybrid backend
