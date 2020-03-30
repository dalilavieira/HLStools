# set environment quartus 19.4
export PATH=$PATH:/opt/altera_pro/19.4/modelsim_ae/bin

# initializate variables hls
source /opt/altera_pro/19.4/hls/init_hls.sh > /tmp/trash.txt

BENCHMARKS=(
    'teste'  
)

#SIMULATOR=modelsim
SIMULATOR=none

for ((i=0; i < ${#BENCHMARKS[@]}; i++)) do
    echo "RUNNING "${BENCHMARKS[i]}
    error=$(i++ -march=Arria10 --simulator $SIMULATOR ${BENCHMARKS[i]}"/"${BENCHMARKS[i]}".c" &> ${BENCHMARKS[i]}"/log.txt")
    # version changed
    rm -rf ${BENCHMARKS[i]}"/a.prj"
    mv "a.prj" ${BENCHMARKS[i]}
done
