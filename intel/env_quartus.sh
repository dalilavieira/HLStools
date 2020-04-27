#!/bin/bash

export QUARTUS_HOME="/opt/altera_pro/19.4/quartus"                                               
export MODEL_SIM_HOME="/opt/altera_pro/19.4/modelsim_ase"                                        
export LM_LICENSE_FILE="27000@localhost"                                                      
export PATH=$PATH:$QUARTUS_HOME/bin:$MODEL_SIM_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$QUARTUS_HOME/linux64 