# set environment quartus 19.4
/opt/synopsys/scl/licenses/start_license_server &> /dev/null
export PATH=$PATH:/opt/altera_pro/19.4/modelsim_ae/bin

# initializate variables hls
source /opt/altera_pro/19.4/hls/init_hls.sh > /tmp/trash.txt

BENCHMARKS=(
    example1_base
    example1_test1
    example1_test2
    example1_test3
    example2_base
    example2_teste1
    example3_base
    example3_teste1
    example3_teste2
    example4_test1
    example4_test2
    example4_test3
    example5_test1
    example5_test2
    example5_test3
    example6_test1
    example6_test2
    example6_test3
)

#SIMULATOR=modelsim
SIMULATOR=none

mkdir logs

for ((i=0; i < ${#BENCHMARKS[@]}; i++)) do
    echo "RUNNING $i: "${BENCHMARKS[i]}
    rm -rf "logs/"${BENCHMARKS[i]}".txt"
    error=$(i++ -march=Arria10 --simulator $SIMULATOR "example/"${BENCHMARKS[i]}".c" &> "logs/"${BENCHMARKS[i]}".txt")
    # version changed
    rm "a.prj" 
done
