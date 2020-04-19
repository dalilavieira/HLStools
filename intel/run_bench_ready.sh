# set environment quartus 19.4
export PATH=$PATH:/opt/altera_pro/19.4/modelsim_ae/bin

# initializate variables hls
source /opt/altera_pro/19.4/hls/init_hls.sh > /tmp/trash.txt

BENCHMARKS=(
    "Chebyshev" 
    "Fir"
    "Kmeans"
    "Loopback"
    "Mibench"
    "Paeth"
    "Poly5"
    "Poly6"
    "Poly8"
    "Qspline"
    "Sgfilter" 
)

#SIMULATOR=modelsim
SIMULATOR=none

for ((i=0; i < ${#BENCHMARKS[@]}; i++)) do
    echo "RUNNING "${BENCHMARKS[i]}
    # version changed
    error=$(i++ -march=Arria10 --simulator $SIMULATOR "bench_ready/"${BENCHMARKS[i]}"/"${BENCHMARKS[i]}".c" &> "bench_ready/"${BENCHMARKS[i]}"/log.txt")
    rm -rf "bench_ready/"${BENCHMARKS[i]}"/a.prj"
    mv "a.prj" "bench_ready/"${BENCHMARKS[i]}
done
