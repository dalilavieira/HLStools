# 1 "extr_.tmuxscreen.c_screen_check_selection_with_main.c"
# 1 "extr_.tmuxscreen.c_screen_check_selection_with_main.c" 1
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
# 1 "extr_.tmuxscreen.c_screen_check_selection_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen_sel {scalar_t__ sy; scalar_t__ ey; scalar_t__ ex; scalar_t__ sx; scalar_t__ modekeys; scalar_t__ rectangle; scalar_t__ hidden; } ;
struct screen {struct screen_sel* sel; } ;


 scalar_t__ MODEKEY_EMACS ;

int
screen_check_selection(struct screen *s, u_int px, u_int py)
{
 struct screen_sel *sel = s->sel;
 u_int xx;

 if (sel == ((void*)0) || sel->hidden)
  return (0);

 if (sel->rectangle) {
  if (sel->sy < sel->ey) {

   if (py < sel->sy || py > sel->ey)
    return (0);
  } else if (sel->sy > sel->ey) {

   if (py > sel->sy || py < sel->ey)
    return (0);
  } else {

   if (py != sel->sy)
    return (0);
  }






  if (sel->ex < sel->sx) {

   if (px < sel->ex)
    return (0);

   if (px > sel->sx)
    return (0);
  } else {

   if (px < sel->sx)
    return (0);

   if (px > sel->ex)
    return (0);
  }
 } else {




  if (sel->sy < sel->ey) {

   if (py < sel->sy || py > sel->ey)
    return (0);

   if (py == sel->sy && px < sel->sx)
    return (0);

   if (sel->modekeys == MODEKEY_EMACS)
    xx = (sel->ex == 0 ? 0 : sel->ex - 1);
   else
    xx = sel->ex;
   if (py == sel->ey && px > xx)
    return (0);
  } else if (sel->sy > sel->ey) {

   if (py > sel->sy || py < sel->ey)
    return (0);

   if (py == sel->ey && px < sel->ex)
    return (0);

   if (sel->modekeys == MODEKEY_EMACS)
    xx = sel->sx - 1;
   else
    xx = sel->sx;
   if (py == sel->sy && (sel->sx == 0 || px > xx))
    return (0);
  } else {

   if (py != sel->sy)
    return (0);

   if (sel->ex < sel->sx) {

    if (sel->modekeys == MODEKEY_EMACS)
     xx = sel->sx - 1;
    else
     xx = sel->sx;
    if (px > xx || px < sel->ex)
     return (0);
   } else {

    if (sel->modekeys == MODEKEY_EMACS)
     xx = (sel->ex == 0 ? 0 : sel->ex - 1);
    else
     xx = sel->ex;
    if (px < sel->sx || px > xx)
     return (0);
   }
  }
 }

 return (1);
}
int main() {
  struct screen * s;
  u_int px;
  u_int py;
  screen_check_selection(s, px, py);
  return 0;
}
