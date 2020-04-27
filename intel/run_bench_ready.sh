# set environment quartus 19.4
export PATH=$PATH:/opt/altera_pro/19.4/modelsim_ae/bin

export QUARTUS_HOME="/opt/altera_pro/19.4/quartus"                                               
export MODEL_SIM_HOME="/opt/altera_pro/19.4/modelsim_ase"                                        
export LM_LICENSE_FILE="27000@localhost"                                                      
export PATH=$PATH:$QUARTUS_HOME/bin:$MODEL_SIM_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$QUARTUS_HOME/linux64 

# initializate variables hls
#source /opt/altera_pro/19.4/hls/init_hls.sh > /tmp/trash.txt
source /opt/altera_pro/19.4/hls/init_hls.sh

BENCHMARKS=(
    "Chebyshev" 
#    "Fir"
#    "Kmeans"
#    "Loopback"
#    "Mibench"
#    "Paeth"
#    "Poly5"
#    "Poly6"
#    "Poly8"
#    "Qspline"
#    "Sgfilter"
#    "SobelFilter" 
)

SIMULATOR=modelsim
#SIMULATOR=none

for ((i=0; i < ${#BENCHMARKS[@]}; i++)) do
    echo "RUNNING "${BENCHMARKS[i]}
    rm "bench_ready/"${BENCHMARKS[i]}"/log.txt" 
    error=$(i++ -march=Arria10 --simulator $SIMULATOR "bench_ready/"${BENCHMARKS[i]}"/"${BENCHMARKS[i]}".cpp" &> "bench_ready/"${BENCHMARKS[i]}"/log.txt")
    rm -rf "bench_ready/"${BENCHMARKS[i]}"/a.prj"
    mv "a.prj" "bench_ready/"${BENCHMARKS[i]}
done
