<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="rom_init_c" top="hamming_window">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <solutions>
        <solution name="a" status=""/>
        <solution name="proj_rom_init_c" status=""/>
        <solution name="sol" status=""/>
    </solutions>
    <files>
        <file name="hamming_window.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../hamming_window_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../hamming_window_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
    </files>
</AutoPilot:project>

