# set environment quartus 19.4
export PATH=$PATH:/opt/altera_pro/19.4/modelsim_ae/bin

# initializate variables hls
source /opt/altera_pro/19.4/hls/init_hls.sh > /tmp/trash.txt

BENCHMARKS=(
    'extr_ccvbintld.c_main' 
    'extr_emscriptentestscoretest_intentional_fault.c_main' 
    'extr_emscriptentestshello_123.c_main' 
    'extr_emscriptentestslib_include_flags.c_main' 
    'extr_libsodiumtestdefaultmisuse.c_xmain' 
    'extr_linuxarchmipsbootcompresseddummy.c_main' 
    'extr_linuxarchpowerpcbootdummy.c_main' 
    'extr_linuxtoolsbuildfeaturetest-bionic.c_main' 
    'extr_linuxtoolsbuildfeaturetest-jvmti.c_main' 
    'extr_linuxtoolsbuildfeaturetest-libpython-version.c_main' 
    'extr_linuxtoolsbuildfeaturetest-libpython-version.c_main_test_libpython_version' 
    'extr_mongooseexamplessimplest_web_server_sslsimplest_web_server_ssl.c_main' 
    'extr_mpvwaftoolsfragmentswasapi.c_main' 
    'extr_obs-studiodepsw32-pthreadstestscleanup0.c_main' 
    'extr_obs-studiodepsw32-pthreadstestscleanup1.c_main' 
    'extr_obs-studiodepsw32-pthreadstestscleanup2.c_main' 
    'extr_obs-studiodepsw32-pthreadstestscleanup3.c_main' 
    'extr_openssltestrsa_complex.c_main' 
    'extr_os-tutorial13-kernel-bareboneskernel.c_main' 
    'extr_os-tutorial14-checkpointkernelkernel.c_main' 
    'extr_reactosmodulesrosappsapplicationsnettsclientrdesktopuiportsxxxwin.c_main' 
    'extr_reactosmodulesrosteststestsbenchbench-syscall.c_main' 
    'extr_reactossdklib3rdpartystlportbuildMakefilesutapp-ctest.c_main' 
    'extr_stbtestsresample_test_c.c_main' 
    'extr_stbtestsstblib_test.c_main' 
)

#SIMULATOR=modelsim
SIMULATOR=none

for ((i=0; i < ${#BENCHMARKS[@]}; i++)) do
    echo "RUNNING "${BENCHMARKS[i]}
    error=$(i++ -march=Arria10 --simulator $SIMULATOR "bench_25/"${BENCHMARKS[i]}"/"${BENCHMARKS[i]}".c" &> "bench_25/"${BENCHMARKS[i]}"/log.txt")
    # version changed
    error=$(i++ -march=Arria10 --simulator $SIMULATOR "bench_25_work/"${BENCHMARKS[i]}"/"${BENCHMARKS[i]}".c" &> "bench_25_work/"${BENCHMARKS[i]}"/log.txt")
    rm -rf "bench_25_work/"${BENCHMARKS[i]}"/a.prj"
    mv "a.prj" "bench_25_work/"${BENCHMARKS[i]}
done
