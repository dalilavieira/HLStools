// Example instance of the top level module for: 
//     afs_abort_to_error
// To include this component in your design, include: 
//     afs_abort_to_error.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

afs_abort_to_error afs_abort_to_error_inst (
  // Interface: clock (clock end)
  .clock               ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn              ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start               ( ), // 1-bit valid input
  .busy                ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                ( ), // 1-bit valid output
  .stall               ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata          ( ), // 32-bit data output
  // Interface: abort_code (conduit sink)
  .abort_code          ( ), // 32-bit data input
  // Interface: EACCES (conduit sink)
  .EACCES              ( ), // 64-bit data input
  // Interface: EAGAIN (conduit sink)
  .EAGAIN              ( ), // 64-bit data input
  // Interface: EBADRQC (conduit sink)
  .EBADRQC             ( ), // 64-bit data input
  // Interface: EBUSY (conduit sink)
  .EBUSY               ( ), // 64-bit data input
  // Interface: EDEADLK (conduit sink)
  .EDEADLK             ( ), // 64-bit data input
  // Interface: EDOM (conduit sink)
  .EDOM                ( ), // 64-bit data input
  // Interface: EDQUOT (conduit sink)
  .EDQUOT              ( ), // 64-bit data input
  // Interface: EEXIST (conduit sink)
  .EEXIST              ( ), // 64-bit data input
  // Interface: EFBIG (conduit sink)
  .EFBIG               ( ), // 64-bit data input
  // Interface: EINVAL (conduit sink)
  .EINVAL              ( ), // 64-bit data input
  // Interface: EIO (conduit sink)
  .EIO                 ( ), // 64-bit data input
  // Interface: EISDIR (conduit sink)
  .EISDIR              ( ), // 64-bit data input
  // Interface: EKEYEXPIRED (conduit sink)
  .EKEYEXPIRED         ( ), // 64-bit data input
  // Interface: EKEYREJECTED (conduit sink)
  .EKEYREJECTED        ( ), // 64-bit data input
  // Interface: EMLINK (conduit sink)
  .EMLINK              ( ), // 64-bit data input
  // Interface: ENAMETOOLONG (conduit sink)
  .ENAMETOOLONG        ( ), // 64-bit data input
  // Interface: ENODEV (conduit sink)
  .ENODEV              ( ), // 64-bit data input
  // Interface: ENOENT (conduit sink)
  .ENOENT              ( ), // 64-bit data input
  // Interface: ENOLCK (conduit sink)
  .ENOLCK              ( ), // 64-bit data input
  // Interface: ENOMEDIUM (conduit sink)
  .ENOMEDIUM           ( ), // 64-bit data input
  // Interface: ENOMEM (conduit sink)
  .ENOMEM              ( ), // 64-bit data input
  // Interface: ENOSPC (conduit sink)
  .ENOSPC              ( ), // 64-bit data input
  // Interface: ENOTCONN (conduit sink)
  .ENOTCONN            ( ), // 64-bit data input
  // Interface: ENOTDIR (conduit sink)
  .ENOTDIR             ( ), // 64-bit data input
  // Interface: ENOTEMPTY (conduit sink)
  .ENOTEMPTY           ( ), // 64-bit data input
  // Interface: ENOTSUPP (conduit sink)
  .ENOTSUPP            ( ), // 64-bit data input
  // Interface: ENXIO (conduit sink)
  .ENXIO               ( ), // 64-bit data input
  // Interface: EPERM (conduit sink)
  .EPERM               ( ), // 64-bit data input
  // Interface: EPROTO (conduit sink)
  .EPROTO              ( ), // 64-bit data input
  // Interface: ERANGE (conduit sink)
  .ERANGE              ( ), // 64-bit data input
  // Interface: EREMOTEIO (conduit sink)
  .EREMOTEIO           ( ), // 64-bit data input
  // Interface: EROFS (conduit sink)
  .EROFS               ( ), // 64-bit data input
  // Interface: ETIMEDOUT (conduit sink)
  .ETIMEDOUT           ( ), // 64-bit data input
  // Interface: EWOULDBLOCK (conduit sink)
  .EWOULDBLOCK         ( ), // 64-bit data input
  // Interface: EXDEV (conduit sink)
  .EXDEV               ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address   ( ), // 64-bit address output
  .avmm_0_rw_byteenable( ), // 8-bit byteenable output
  .avmm_0_rw_read      ( ), // 1-bit read output
  .avmm_0_rw_readdata  ( ), // 64-bit readdata input
  .avmm_0_rw_write     ( ), // 1-bit write output
  .avmm_0_rw_writedata ( )  // 64-bit writedata output
);
