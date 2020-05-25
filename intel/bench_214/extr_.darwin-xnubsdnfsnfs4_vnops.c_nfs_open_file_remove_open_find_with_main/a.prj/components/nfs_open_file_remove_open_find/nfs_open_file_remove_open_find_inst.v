// Example instance of the top level module for: 
//     nfs_open_file_remove_open_find
// To include this component in your design, include: 
//     nfs_open_file_remove_open_find.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

nfs_open_file_remove_open_find nfs_open_file_remove_open_find_inst (
  // Interface: clock (clock end)
  .clock                      ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                     ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start                      ( ), // 1-bit valid input
  .busy                       ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                       ( ), // 1-bit valid output
  .stall                      ( ), // 1-bit stall input
  // Interface: nofp (conduit sink)
  .nofp                       ( ), // 64-bit data input
  // Interface: accessMode (conduit sink)
  .accessMode                 ( ), // 32-bit data input
  // Interface: denyMode (conduit sink)
  .denyMode                   ( ), // 32-bit data input
  // Interface: newAccessMode (conduit sink)
  .newAccessMode              ( ), // 64-bit data input
  // Interface: newDenyMode (conduit sink)
  .newDenyMode                ( ), // 64-bit data input
  // Interface: delegated (conduit sink)
  .delegated                  ( ), // 64-bit data input
  // Interface: NFS_OPEN_SHARE_ACCESS_BOTH (conduit sink)
  .NFS_OPEN_SHARE_ACCESS_BOTH ( ), // 64-bit data input
  // Interface: NFS_OPEN_SHARE_ACCESS_READ (conduit sink)
  .NFS_OPEN_SHARE_ACCESS_READ ( ), // 64-bit data input
  // Interface: NFS_OPEN_SHARE_ACCESS_WRITE (conduit sink)
  .NFS_OPEN_SHARE_ACCESS_WRITE( ), // 64-bit data input
  // Interface: NFS_OPEN_SHARE_DENY_NONE (conduit sink)
  .NFS_OPEN_SHARE_DENY_NONE   ( ), // 64-bit data input
  // Interface: NFS_OPEN_SHARE_DENY_READ (conduit sink)
  .NFS_OPEN_SHARE_DENY_READ   ( ), // 64-bit data input
  // Interface: NFS_OPEN_SHARE_DENY_WRITE (conduit sink)
  .NFS_OPEN_SHARE_DENY_WRITE  ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address          ( ), // 64-bit address output
  .avmm_0_rw_byteenable       ( ), // 8-bit byteenable output
  .avmm_0_rw_read             ( ), // 1-bit read output
  .avmm_0_rw_readdata         ( ), // 64-bit readdata input
  .avmm_0_rw_write            ( ), // 1-bit write output
  .avmm_0_rw_writedata        ( )  // 64-bit writedata output
);
