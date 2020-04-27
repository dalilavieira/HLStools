source [file join [file dirname [info script]] ./../../../ip/tb/dpic_qspline/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/main_dpi_controller/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/qspline_en_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/qspline_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sp_cstart/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_done/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_cwfsw/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/clock_reset/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/qspline_ir_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../../components/qspline/qspline/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_qspline_idx/sim/common/vcs_files.tcl]

namespace eval tb {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [dpic_qspline::get_memory_files "$QSYS_SIMDIR/../../ip/tb/dpic_qspline/sim/"]]
    set memory_files [concat $memory_files [main_dpi_controller::get_memory_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set memory_files [concat $memory_files [qspline_en_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/qspline_en_cfan/sim/"]]
    set memory_files [concat $memory_files [qspline_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/qspline_cfan/sim/"]]
    set memory_files [concat $memory_files [sp_cstart::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set memory_files [concat $memory_files [cat_done::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set memory_files [concat $memory_files [cat_cwfsw::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set memory_files [concat $memory_files [clock_reset::get_memory_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set memory_files [concat $memory_files [qspline_ir_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/qspline_ir_cfan/sim/"]]
    set memory_files [concat $memory_files [qspline::get_memory_files "$QSYS_SIMDIR/../../../components/qspline/qspline/sim/"]]
    set memory_files [concat $memory_files [sso_qspline_idx::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_qspline_idx/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [dpic_qspline::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_qspline/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set design_files [dict merge $design_files [qspline_en_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/qspline_en_cfan/sim/"]]
    set design_files [dict merge $design_files [qspline_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/qspline_cfan/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [qspline_ir_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/qspline_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [qspline::get_common_design_files "$QSYS_SIMDIR/../../../components/qspline/qspline/sim/"]]
    set design_files [dict merge $design_files [sso_qspline_idx::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_qspline_idx/sim/"]]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [dpic_qspline::get_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_qspline/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set design_files [dict merge $design_files [qspline_en_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/qspline_en_cfan/sim/"]]
    set design_files [dict merge $design_files [qspline_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/qspline_cfan/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [qspline_ir_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/qspline_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [qspline::get_design_files "$QSYS_SIMDIR/../../../components/qspline/qspline/sim/"]]
    set design_files [dict merge $design_files [sso_qspline_idx::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_qspline_idx/sim/"]]
    dict set design_files "tb_altera_irq_mapper_191_u6o76qa.sv" "$QSYS_SIMDIR/../altera_irq_mapper_191/sim/tb_altera_irq_mapper_191_u6o76qa.sv"
    dict set design_files "tb.v"                                "$QSYS_SIMDIR/tb.v"                                                            
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [dpic_qspline::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [main_dpi_controller::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [qspline_en_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [qspline_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sp_cstart::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_done::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_cwfsw::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [clock_reset::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [qspline_ir_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [qspline::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_qspline_idx::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [dpic_qspline::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [main_dpi_controller::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [qspline_en_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [qspline_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sp_cstart::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_done::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_cwfsw::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [clock_reset::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [qspline_ir_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [qspline::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_qspline_idx::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [dpic_qspline::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [main_dpi_controller::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [qspline_en_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [qspline_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sp_cstart::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_done::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_cwfsw::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [clock_reset::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [qspline_ir_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [qspline::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_qspline_idx::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
