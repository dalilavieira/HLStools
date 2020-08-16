
# set environment quartus 19.4
#export PATH=$PATH:/opt/altera_pro/19.4/modelsim_ae/bin
#/opt/synopsys/scl/licenses/start_license_server &> /dev/null

# initializate variables hls
#source /opt/altera_pro/19.4/hls/init_hls.sh > /tmp/trash.txt

BENCHMARKS=(
    example1 example2 example3 example5
)

#SIMULATOR=modelsim
SIMULATOR=none

for ((i=0; i < ${#BENCHMARKS[@]}; i++)) do
    echo "RUNNING $i: "${BENCHMARKS[i]}
    error=$(i++ -march=Arria10 --simulator $SIMULATOR ${BENCHMARKS[i]}/${BENCHMARKS[i]}".c" &> ${BENCHMARKS[i]}/"logs.txt")
    rm -rf ${BENCHMARKS[i]}/a.prj
    mv a.prj ${BENCHMARKS[i]}/ 
done
