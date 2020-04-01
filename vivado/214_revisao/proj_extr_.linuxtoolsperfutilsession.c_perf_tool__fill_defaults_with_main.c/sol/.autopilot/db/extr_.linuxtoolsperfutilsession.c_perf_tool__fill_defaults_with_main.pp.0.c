# 1 "extr_.linuxtoolsperfutilsession.c_perf_tool__fill_defaults_with_main.c"
# 1 "extr_.linuxtoolsperfutilsession.c_perf_tool__fill_defaults_with_main.c" 1
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
# 1 "extr_.linuxtoolsperfutilsession.c_perf_tool__fill_defaults_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct perf_tool {int * feature; int * time_conv; int * stat_round; int * stat; int * stat_config; int * cpu_map; int * thread_map; int * auxtrace_error; int * auxtrace; int * auxtrace_info; int * id_index; int * finished_round; scalar_t__ ordered_events; int * build_id; int * tracing_data; int * event_update; int * attr; int * unthrottle; int * throttle; int * read; int * context_switch; int * itrace_start; int * aux; int * lost_samples; int * lost; int * exit; int * fork; int * namespaces; int * comm; int * mmap2; int * mmap; int * sample; } ;


 int * perf_event__process_aux ;
 int * perf_event__process_itrace_start ;
 int * perf_event__process_lost ;
 int * perf_event__process_lost_samples ;
 int * perf_event__process_switch ;
 int * process_event_auxtrace_stub ;
 int * process_event_cpu_map_stub ;
 void* process_event_op2_stub ;
 void* process_event_sample_stub ;
 int * process_event_stat_config_stub ;
 void* process_event_stub ;
 int * process_event_synth_attr_stub ;
 int * process_event_synth_event_update_stub ;
 int * process_event_synth_tracing_data_stub ;
 int * process_event_thread_map_stub ;
 int * process_finished_round ;
 int * process_finished_round_stub ;
 int * process_stat_round_stub ;
 int * process_stat_stub ;

void perf_tool__fill_defaults(struct perf_tool *tool)
{
 if (tool->sample == ((void*)0))
  tool->sample = process_event_sample_stub;
 if (tool->mmap == ((void*)0))
  tool->mmap = process_event_stub;
 if (tool->mmap2 == ((void*)0))
  tool->mmap2 = process_event_stub;
 if (tool->comm == ((void*)0))
  tool->comm = process_event_stub;
 if (tool->namespaces == ((void*)0))
  tool->namespaces = process_event_stub;
 if (tool->fork == ((void*)0))
  tool->fork = process_event_stub;
 if (tool->exit == ((void*)0))
  tool->exit = process_event_stub;
 if (tool->lost == ((void*)0))
  tool->lost = perf_event__process_lost;
 if (tool->lost_samples == ((void*)0))
  tool->lost_samples = perf_event__process_lost_samples;
 if (tool->aux == ((void*)0))
  tool->aux = perf_event__process_aux;
 if (tool->itrace_start == ((void*)0))
  tool->itrace_start = perf_event__process_itrace_start;
 if (tool->context_switch == ((void*)0))
  tool->context_switch = perf_event__process_switch;
 if (tool->read == ((void*)0))
  tool->read = process_event_sample_stub;
 if (tool->throttle == ((void*)0))
  tool->throttle = process_event_stub;
 if (tool->unthrottle == ((void*)0))
  tool->unthrottle = process_event_stub;
 if (tool->attr == ((void*)0))
  tool->attr = process_event_synth_attr_stub;
 if (tool->event_update == ((void*)0))
  tool->event_update = process_event_synth_event_update_stub;
 if (tool->tracing_data == ((void*)0))
  tool->tracing_data = process_event_synth_tracing_data_stub;
 if (tool->build_id == ((void*)0))
  tool->build_id = process_event_op2_stub;
 if (tool->finished_round == ((void*)0)) {
  if (tool->ordered_events)
   tool->finished_round = process_finished_round;
  else
   tool->finished_round = process_finished_round_stub;
 }
 if (tool->id_index == ((void*)0))
  tool->id_index = process_event_op2_stub;
 if (tool->auxtrace_info == ((void*)0))
  tool->auxtrace_info = process_event_op2_stub;
 if (tool->auxtrace == ((void*)0))
  tool->auxtrace = process_event_auxtrace_stub;
 if (tool->auxtrace_error == ((void*)0))
  tool->auxtrace_error = process_event_op2_stub;
 if (tool->thread_map == ((void*)0))
  tool->thread_map = process_event_thread_map_stub;
 if (tool->cpu_map == ((void*)0))
  tool->cpu_map = process_event_cpu_map_stub;
 if (tool->stat_config == ((void*)0))
  tool->stat_config = process_event_stat_config_stub;
 if (tool->stat == ((void*)0))
  tool->stat = process_stat_stub;
 if (tool->stat_round == ((void*)0))
  tool->stat_round = process_stat_round_stub;
 if (tool->time_conv == ((void*)0))
  tool->time_conv = process_event_op2_stub;
 if (tool->feature == ((void*)0))
  tool->feature = process_event_op2_stub;
}
int main() {
  struct perf_tool * tool;
  perf_tool__fill_defaults(tool);
  return 0;
}
