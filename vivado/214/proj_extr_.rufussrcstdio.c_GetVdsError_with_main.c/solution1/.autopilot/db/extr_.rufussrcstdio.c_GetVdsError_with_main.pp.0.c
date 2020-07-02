# 1 "extr_.rufussrcstdio.c_GetVdsError_with_main.c"
# 1 "extr_.rufussrcstdio.c_GetVdsError_with_main.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1





# 1 "/opt/xilinx/Vivado/2019.1/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 305 "/opt/xilinx/Vivado/2019.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "extr_.rufussrcstdio.c_GetVdsError_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int DWORD ;



__attribute__((used)) static const char *GetVdsError(DWORD error_code)
{
 switch (error_code) {
 case 0x80042400:
  return "The operation is not supported by the object.";
 case 0x80042401:
  return "VDS or the provider failed to initialize.";
 case 0x80042402:
  return "VDS did not call the hardware provider's initialization method.";
 case 0x80042403:
  return "The provider is already registered.";
 case 0x80042404:
  return "A concurrent second call is made on an object before the first call is completed.";
 case 0x80042405:
  return "The specified object was not found.";
 case 0x80042406:
  return "The specified space is neither free nor valid.";
 case 0x80042407:
  return "No more partitions can be created on the specified disk.";
 case 0x80042408:
  return "The extended partition is not empty.";
 case 0x80042409:
  return "The operation is still in progress.";
 case 0x8004240A:
  return "The operation is not permitted on the specified disk, partition, or volume.";
 case 0x8004240B:
  return "The object no longer exists.";
 case 0x8004240C:
  return "The operation can no longer be canceled.";
 case 0x8004240D:
  return "The operation has already been canceled.";
 case 0x8004240E:
  return "The file system does not support extending this volume.";
 case 0x8004240F:
  return "There is not enough space to complete the operation.";
 case 0x80042410:
  return "There are not enough free disk drives in the subsystem to complete the operation.";
 case 0x80042411:
  return "The cookie was not found.";
 case 0x80042412:
  return "There is no removable media in the drive.";
 case 0x80042413:
  return "The device is currently in use.";
 case 0x80042414:
  return "The disk contains partitions or volumes.";
 case 0x80042415:
  return "The specified operation is not valid.";
 case 0x80042416:
  return "The specified path was not found.";
 case 0x80042417:
  return "The specified disk has not been initialized.";
 case 0x80042418:
  return "The specified disk is not an unallocated disk.";
 case 0x80042419:
  return "An unrecoverable error occurred. The service MUST shut down.";
 case 0x0004241A:
  return "The clean operation was not a full clean or was canceled before it could be completed.";
 case 0x8004241B:
  return "The provider failed to connect to the LDMA service.";
 case 0x8004241C:
  return "The provider failed to initialize.";
 case 0x8004241D:
  return "The object already exists.";
 case 0x8004241E:
  return "No disks were found on the target machine.";
 case 0x8004241F:
  return "The cache for a provider is corrupt.";
 case 0x80042420:
  return "A method call to the LDMA service failed.";
 case 0x00042421:
  return "The provider encountered errors while loading the cache.";
 case 0x80042422:
  return "The device form of the volume pathname could not be retrieved.";
 case 0x80042423:
  return "Failed to open the volume device";
 case 0x80042424:
  return "A corrupt notification was sent from the LDMA service.";
 case 0x80042425:
  return "The file system is incompatible with the specified operation.";
 case 0x80042426:
  return "The media is incompatible with the specified operation.";
 case 0x80042427:
  return "Access is denied. A VDS operation MUST run elevated.";
 case 0x80042428:
  return "The media is write-protected.";
 case 0x80042429:
  return "The volume label is not valid.";
 case 0x8004242A:
  return "The volume cannot be quick-formatted.";
 case 0x8004242B:
  return "An I/O error occurred during the operation.";
 case 0x8004242C:
  return "The volume size is too small.";
 case 0x8004242D:
  return "The volume size is too large.";
 case 0x8004242E:
  return "The cluster size is too small.";
 case 0x8004242F:
  return "The cluster size is too large.";
 case 0x80042430:
  return "The number of clusters is too large to be represented as a 32-bit integer.";
 case 0x80042431:
  return "The component that the object represents has failed.";
 case 0x80042432:
  return "The volume is incomplete.";
 case 0x80042433:
  return "The specified extent size is too small.";
 case 0x00042434:
  return "The operation was successful, but VDS failed to update the boot options.";
 case 0x00042436:
 case 0x80042436:
  return "The boot partition's partition number will change as a result of the operation.";
 case 0x80042437:
  return "The specified disk does not have enough free space to complete the operation.";
 case 0x80042438:
  return "An active partition was detected on the selected disk.";
 case 0x80042439:
  return "The partition information cannot be read.";
 case 0x8004243A:
  return "A partition with an unknown type was detected on the specified disk.";
 case 0x8004243C:
  return "A volume on the specified disk could not be opened.";
 case 0x8004243D:
  return "The volume is not online.";
 case 0x8004243E:
  return "The volume is failing or has failed.";
 case 0x8004243F:
  return "The volume spans multiple disks.";
 case 0x80042440:
  return "The volume does not consist of a single disk extent.";
 case 0x80042441:
  return "A provider returned bad data.";
 case 0x80042442:
  return "A provider failed to complete an operation.";
 case 0x00042443:
  return "The file system was formatted successfully but could not be compressed.";
 case 0x80042444:
  return "The pack is offline.";
 case 0x80042445:
  return "The volume is not a mirror.";
 case 0x80042446:
  return "No extents were found for the volume.";
 case 0x80042447:
  return "The migrated disk failed to load to the cache.";
 case 0x80042448:
  return "VDS encountered an internal error.";
 case 0x8004244A:
  return "The method call is not supported for the specified provider type.";
 case 0x8004244B:
  return "One or more of the specified disks are not online.";
 case 0x8004244C:
  return "One or more extents of the disk are already being used by the volume.";
 case 0x0004244D:
  return "The asynchronous operation is in progress.";
 case 0x8004244E:
  return "Failure initializing the asynchronous object.";
 case 0x8004244F:
  return "The volume is not mounted.";
 case 0x80042450:
  return "The pack was not found.";
 case 0x80042453:
  return "The reference to the object might be stale.";
 case 0x80042454:
  return "The specified disk could not be found.";
 case 0x80042455:
  return "The provider's list of PnP registered disks has become corrupted.";
 case 0x80042457:
  return "The provider does not support the VDS_VF_NO DRIVELETTER volume flag.";
 case 0x80042459:
  return "Some volume flags are already set.";
 case 0x0004245B:
  return "Unable to retrieve the GPT attributes for this volume.";
 case 0x8004245C:
  return "The volume is already dismounted temporarily.";
 case 0x8004245D:
  return "The volume is already permanently dismounted.";
 case 0x8004245E:
  return "The volume cannot be dismounted permanently because it still has an access path.";
 case 0x8004245F:
  return "The operation timed out.";
 case 0x80042461:
  return "The operation timed out in the LDMA service. Retry the operation.";
 case 0x80042462:
  return "The flags to be cleared do not match the flags that were set previously.";
 case 0x80042463:
  return "The operation failed. Retry the operation.";
 case 0x80042464:
  return "The operation failed, because an online pack object already exists.";
 case 0x80042468:
  return "Only the first 2TB are usable on large MBR disks.";
 case 0x80042500:
  return "There are no software providers loaded.";
 case 0x80042501:
  return "The disk is not missing.";
 case 0x80042502:
  return "The volume's layout could not be retrieved.";
 case 0x80042503:
  return "The volume's driver information is corrupted.";
 case 0x80042504:
  return "The enumerator is corrupted";
 case 0x80042505:
  return "An internal error occurred in the volume management driver.";
 case 0x80042507:
  return "The volume name is not valid.";
 case 0x00042508:
  return "The disk is missing and not all information could be returned.";
 case 0x80042509:
  return "The disk's partition information is corrupted.";
 case 0x0004250A:
  return "The disk's partition information does not conform to what is expected on a dynamic disk.";
 case 0x8004250B:
  return "The disk's extent information is corrupted.";
 case 0x0004250E:
  return "Warning: There was a failure while checking for the system partition.";
 case 0x8004250F:
  return "The PNP service sent a corrupted notification to the provider.";
 case 0x80042510:
 case 0x80042511:
  return "No disk/volume arrival notification was received.";
 case 0x80042512:
 case 0x80042513:
  return "No disk/volume removal notification was received.";
 case 0x80042514:
  return "The provider is exiting.";
 case 0x00042517:
  return "No volume arrival notification was received.";
 case 0x80042519:
  return "The specified disk is not valid.";
 case 0x8004251A:
  return "The specified disk pack is not valid.";
 case 0x8004251B:
  return "This operation is not allowed on disks with volumes.";
 case 0x8004251C:
  return "The driver returned an invalid parameter error.";
 case 0x8004253D:
  return "The object was not found in the driver cache.";
 case 0x8004253E:
  return "The disk layout contains partitions which are not cylinder aligned.";
 case 0x8004253F:
  return "The disk layout contains partitions which are less than the minimum required size.";
 case 0x80042540:
  return "The I/O to the disk is failing.";
 case 0x80042543:
  return "Invalid GPT attributes were specified.";
 case 0x8004254D:
  return "An unexpected layout change occurred external to the volume manager.";
 case 0x8004254E:
  return "The volume length is invalid.";
 case 0x8004254F:
  return "The volume length is not a multiple of the sector size.";
 case 0x80042550:
  return "The volume does not have a retained partition association.";
 case 0x80042551:
  return "The volume already has a retained partition association.";
 case 0x80042553:
  return "The specified alignment is beyond the first cylinder.";
 case 0x80042554:
  return "The specified alignment is not a multiple of the sector size.";
 case 0x80042555:
  return "The specified partition type cannot be created with a non-zero alignment.";
 case 0x80042556:
  return "The service's cache has become corrupt.";
 case 0x80042557:
  return "The specified volume flag cannot be cleared.";
 case 0x80042558:
  return "The operation is not allowed on a disk that is in the process of being cleaned.";
 case 0x8004255A:
  return "The operation is not supported on removable media.";
 case 0x8004255B:
  return "The operation is not supported on a non-empty removable disk.";
 case 0x8004255C:
  return "The specified drive letter is not free to be assigned.";
 case 0x8004255E:
  return "The specified drive letter is not valid.";
 case 0x8004255F:
  return "The specified number of drive letters to retrieve is not valid.";
 case 0x80042560:
  return "The specified file system flag is not valid.";
 case 0x80042561:
  return "The specified file system is not valid.";
 case 0x80042562:
  return "The specified object type is not valid.";
 case 0x80042563:
  return "The specified partition layout is invalid.";
 case 0x80042564:
  return "VDS only supports MBR or GPT partition style disks.";
 case 0x80042565:
  return "The specified partition type is not valid for this operation.";
 case 0x80042566:
 case 0x80042567:
 case 0x8004256A:
  return "A NULL GUID was passed to the provider.";
 case 0x80042568:
  return "The specified provider name is invalid.";
 case 0x80042569:
  return "The specified provider type is invalid.";
 case 0x8004256B:
  return "The specified provider version string is invalid.";
 case 0x8004256C:
  return "The specified query provider flag is invalid.";
 case 0x8004256D:
  return "The specified service flag is invalid.";
 case 0x8004256E:
  return "The specified volume flag is invalid.";
 case 0x8004256F:
  return "The operation is only supported on an OEM, ESP, or unknown partition.";
 case 0x80042570:
  return "Cannot delete a protected partition without the force protected parameter set.";
 case 0x80042571:
  return "The specified partition style is not the same as the disk's partition style.";
 case 0x80042572:
  return "An internal error has occurred in the provider.";
 case 0x80042575:
  return "An unrecoverable error occurred in the provider.";
 case 0x80042576:
  return "Cannot assign a mount point to a hidden volume.";
 case 0x00042577:
 case 0x00042578:
  return "Failed to dismount/remount the volume after setting the volume flags.";
 case 0x80042579:
  return "Cannot set the specified flag as revert-on-close because it is already set.";
 case 0x8004257B:
  return "The input volume id cannot be the id of the volume that is the target of the operation.";
 case 0x00042583:
  return "Failed to obtain a file system lock.";
 case 0x80042584:
  return "The volume is read only.";
 case 0x80042585:
  return "The volume type is invalid for this operation.";
 case 0x80042588:
  return "This operation is not supported on a mirrored volume.";
 case 0x80042589:
  return "The operation is only supported on simple or spanned volumes.";
 case 0x8004258C:
 case 0x8004258D:
  return "The operation is not supported on this type of partitions.";
 case 0x0004258E:
  return "The boot entries cannot be updated automatically on WinPE.";
 case 0x8004258F:
  return "The alignment is not a power of two.";
 case 0x80042590:
  return "The alignment is zero.";
 case 0x80042593:
  return "The default file system could not be determined.";
 case 0x80042595:
  return "This disk is already online.";
 case 0x80042596:
  return "The online operation failed.";
 case 0x80042597:
  return "The offline operation failed.";
 case 0x80042598:
  return "The operation could not be completed because the specified revision number is not supported.";
 case 0x00042700:
  return "The name was set successfully but had to be truncated.";
 case 0x80042701:
  return "The specified name is not unique.";
 case 0x8004270F:
  return "The disk's path could not be retrieved. Some operations on the disk might fail.";
 case 0x80042711:
  return "The path could not be retrieved for one or more volumes.";
 case 0x80042712:
  return "The provider's cache is not in sync with the driver cache.";
 case 0x80042713:
  return "No import target was set for the subsystem.";
 case 0x00042714:
  return "The object already exists.";
 case 0x00042715:
  return "Some, but not all, of the properties were successfully retrieved.";
 case 0x80042803:
  return "Volume disk extent information could not be retrieved for the boot volume.";
 case 0x80042807:
  return "Disk attributes cannot be changed on the boot disk.";
 case 0x00042808:
 case 0x00042809:
  return "One or more of the volumes on the disk could not be mounted/dismounted.";
 case 0x8004280A:
 case 0x8004280B:
  return "The operation cannot be performed on a disk that is offline or read-only.";
 case 0x8004280C:
 case 0x8004280D:
 case 0x8004280E:
  return "The operation cannot be performed on a disk that contains a pagefile, hibernation or crashdump volume.";
 case 0x8004280F:
  return "A system error occurred while retrieving the system disk information.";
 case 0x80042810:
  return "Multiple disk extents reported for the system volume - system error.";
 case 0x80042811:
  return "Disk attributes cannot be changed on the current system disk or BIOS disk 0.";
 case 0x80042823:
  return "The sector size MUST be non-zero, a power of 2, and less than the maximum sector size.";
 case 0x80042907:
  return "The provider returned a NULL subsystem identification string.";
 case 0x8004290C:
  return "A reboot is required before any further operations are initiated.";
 case 0x8004290D:
  return "Volume GUID pathnames are not valid input to this method.";
 case 0x8004290E:
  return "Assigning or removing drive letters on the current boot or pagefile volume is not allowed.";
 case 0x8004290F:
  return "Delete is not allowed on a critical volume.";
 case 0x80042910:
 case 0x80042911:
  return "The FORCE parameter MUST be set to TRUE in order to clean a disk that contains a data or OEM volume.";
 case 0x80042912:
  return "Clean is not allowed on a critical disk.";
 case 0x80042913:
  return "Format is not allowed on a critical volume.";
 case 0x80042914:
 case 0x80042915:
 case 0x80042916:
  return "The requested file system format is not supported on this volume.";
 case 0x80042917:
  return "The volume is not formattable.";
 case 0x80042918:
  return "The specified file system does not support compression.";
 default:
  return ((void*)0);
 }
}
int main() {
  DWORD error_code;
  GetVdsError(error_code);
  return 0;
}
