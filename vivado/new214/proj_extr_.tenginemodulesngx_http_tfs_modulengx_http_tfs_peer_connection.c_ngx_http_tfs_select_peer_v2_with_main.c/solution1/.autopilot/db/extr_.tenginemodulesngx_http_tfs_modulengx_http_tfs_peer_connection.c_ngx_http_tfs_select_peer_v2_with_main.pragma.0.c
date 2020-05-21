# 1 "extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2_with_main.c"
# 1 "extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2_with_main.c" 1
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
# 1 "extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; } ;
struct TYPE_6__ {TYPE_1__ action; } ;
struct TYPE_7__ {int * tfs_peer; int * input_filter; int * tfs_peer_servers; void* process_request_body; TYPE_2__ r_ctx; void* create_request; int state; int * retry_handler; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_peer_connection_t ;
# 33 "extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2_with_main.c"
 size_t NGX_HTTP_TFS_DATA_SERVER ;
 size_t NGX_HTTP_TFS_META_SERVER ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 size_t NGX_HTTP_TFS_RC_SERVER ;
 size_t NGX_HTTP_TFS_ROOT_SERVER ;
# 67 "extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2_with_main.c"
 void* ngx_http_tfs_create_ds_request ;
 void* ngx_http_tfs_create_ms_request ;
 void* ngx_http_tfs_create_ns_request ;
 void* ngx_http_tfs_create_rcs_request ;
 void* ngx_http_tfs_create_rs_request ;
 void* ngx_http_tfs_process_ds ;
 int * ngx_http_tfs_process_ds_input_filter ;
 void* ngx_http_tfs_process_ds_read ;
 void* ngx_http_tfs_process_ms ;
 int * ngx_http_tfs_process_ms_input_filter ;
 void* ngx_http_tfs_process_ms_ls_dir ;
 void* ngx_http_tfs_process_ns ;
 void* ngx_http_tfs_process_rcs ;
 void* ngx_http_tfs_process_rs ;
 void* ngx_http_tfs_retry_ds ;
 void* ngx_http_tfs_retry_ns ;

__attribute__((used)) static ngx_http_tfs_peer_connection_t *
ngx_http_tfs_select_peer_v2(ngx_http_tfs_t *t)
{
    switch (t->r_ctx.action.code) {
    case 165:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

    case 158:
        switch (t->state) {
        case 138:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 140:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 139:
        case 143:
            t->create_request = ngx_http_tfs_create_ms_request;
            t->process_request_body = ngx_http_tfs_process_ms;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 142:
        case 141:
        case 144:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 146:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 145:
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    case 160:
        switch (t->state) {
        case 147:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 149:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 150:
            t->create_request = ngx_http_tfs_create_ms_request;
            t->process_request_body = ngx_http_tfs_process_ms;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 151:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 148:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds_read;
            t->input_filter = ngx_http_tfs_process_ds_input_filter;
            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 152:
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    case 157:
        switch (t->state) {
        case 130:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 131:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 136:
        case 128:
            t->create_request = ngx_http_tfs_create_ms_request;
            t->process_request_body = ngx_http_tfs_process_ms;
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 135:
        case 132:
            t->create_request = ngx_http_tfs_create_ns_request;
            t->process_request_body = ngx_http_tfs_process_ns;
            t->input_filter = ((void*)0);
            t->retry_handler = ngx_http_tfs_retry_ns;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER];

        case 134:
        case 129:
        case 137:
            t->create_request = ngx_http_tfs_create_ds_request;
            t->process_request_body = ngx_http_tfs_process_ds;
            t->input_filter = ((void*)0);

            t->retry_handler = ngx_http_tfs_retry_ds;
            return &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER];

        case 133:
            t->input_filter = ((void*)0);
            t->retry_handler = ((void*)0);
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    case 166:
    case 167:
    case 163:
    case 164:
    case 162:
    case 161:
    case 159:
        switch (t->state) {
        case 153:
            t->create_request = ngx_http_tfs_create_rcs_request;
            t->process_request_body = ngx_http_tfs_process_rcs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_RC_SERVER];

        case 155:
            t->create_request = ngx_http_tfs_create_rs_request;
            t->process_request_body = ngx_http_tfs_process_rs;
            t->input_filter = ((void*)0);
            return &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER];

        case 154:
            t->create_request = ngx_http_tfs_create_ms_request;
            if (t->r_ctx.action.code == 164) {
                t->process_request_body = ngx_http_tfs_process_ms_ls_dir;
                t->input_filter = ngx_http_tfs_process_ms_input_filter;
            } else {
                t->process_request_body = ngx_http_tfs_process_ms;
                t->input_filter = ((void*)0);
            }
            return &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER];

        case 156:
            t->input_filter = ((void*)0);
            return t->tfs_peer;
        default:
            return ((void*)0);
        }
        break;
    default:
        break;
    }

    return ((void*)0);
}
int main() {
  ngx_http_tfs_t * t;
  ngx_http_tfs_select_peer_v2(t);
  return 0;
}
