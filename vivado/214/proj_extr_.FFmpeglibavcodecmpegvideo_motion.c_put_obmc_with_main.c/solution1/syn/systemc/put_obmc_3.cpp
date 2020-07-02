#include "put_obmc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void put_obmc::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_address0\" :  \"" << dst_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_ce0\" :  \"" << dst_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_we0\" :  \"" << dst_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_d0\" :  \"" << dst_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_address1\" :  \"" << dst_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_ce1\" :  \"" << dst_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_we1\" :  \"" << dst_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_d1\" :  \"" << dst_d1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_address0\" :  \"" << src_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_ce0\" :  \"" << src_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_q0\" :  \"" << src_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_address1\" :  \"" << src_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_ce1\" :  \"" << src_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_q1\" :  \"" << src_q1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stride\" :  \"" << stride.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

