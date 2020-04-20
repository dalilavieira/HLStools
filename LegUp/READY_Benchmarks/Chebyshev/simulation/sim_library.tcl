# Simulation library paths for ModelSim
if { [info exists ::env(LEGUP_ROOT_DIR_WIN) ] } {
	set root $::env(LEGUP_ROOT_DIR_WIN) 
} else {
	set root $::env(LEGUP_ROOT_DIR)
}
vmap altera $root/ip/libs/altera/altera/altera
vmap altera_lnsim $root/ip/libs/altera/altera_lnsim/altera_lnsim
vmap altera_lnsim_ver $root/ip/libs/altera/altera_lnsim_ver/altera_lnsim_ver
vmap altera_mf $root/ip/libs/altera/altera_mf/altera_mf
vmap altera_mf_ver $root/ip/libs/altera/altera_mf_ver/altera_mf_ver
vmap altera_ver $root/ip/libs/altera/altera_ver/altera_ver
vmap arriav_mentor $root/ip/libs/altera/arriav/arriav_mentor
vmap cycloneii $root/ip/libs/altera/cycloneii/cycloneii
vmap cycloneiv $root/ip/libs/altera/cycloneiv/cycloneiv
vmap cyclonev $root/ip/libs/altera/cyclonev/cyclonev
vmap altfp $root/ip/libs/altera/floating_point/altfp
vmap lpm_ver $root/ip/libs/altera/lpm_ver/lpm_ver
vmap sgate_ver $root/ip/libs/altera/sgate_ver/sgate_ver
vmap stratixiv $root/ip/libs/altera/stratixiv/stratixiv
vmap stratixv $root/ip/libs/altera/stratixv/stratixv
vmap twentynm $root/ip/libs/altera/twentynm/twentynm
vmap generic $root/ip/libs/generic/generic
vmap legup_fp $root/ip/libs/legup_fp/legup_fp
