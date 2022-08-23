<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RsRx" />
        <signal name="RW" />
        <signal name="XLXN_37(7:0)" />
        <signal name="XLXN_40(15:0)" />
        <signal name="XLXN_41" />
        <signal name="RST" />
        <signal name="RamClk" />
        <signal name="MemWR" />
        <signal name="MemOE" />
        <signal name="RamCS" />
        <signal name="RamUB" />
        <signal name="RamLB" />
        <signal name="RamWait" />
        <signal name="MemDB(15:0)" />
        <signal name="MemAdr(23:0)" />
        <signal name="XLXN_64(23:0)" />
        <signal name="XLXN_70" />
        <signal name="XLXN_76(15:0)" />
        <signal name="XLXN_77(15:0)" />
        <signal name="an(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="Led(7:0)" />
        <signal name="XLXN_91(11:0)" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RsRx" />
        <port polarity="Input" name="RW" />
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="RamClk" />
        <port polarity="Output" name="MemWR" />
        <port polarity="Output" name="MemOE" />
        <port polarity="Output" name="RamCS" />
        <port polarity="Output" name="RamUB" />
        <port polarity="Output" name="RamLB" />
        <port polarity="Output" name="RamWait" />
        <port polarity="BiDirectional" name="MemDB(15:0)" />
        <port polarity="Output" name="MemAdr(23:0)" />
        <port polarity="Output" name="an(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="Led(7:0)" />
        <blockdef name="CONTROLADOR">
            <timestamp>2017-6-18T7:31:27</timestamp>
            <rect width="352" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-496" y2="-496" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="CLK_DIV1">
            <timestamp>2017-6-18T5:3:13</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="UART_RX">
            <timestamp>2017-6-18T3:23:19</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="FSM_UART">
            <timestamp>2017-6-18T7:31:0</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="DIRECCIONAMIENTO">
            <timestamp>2017-6-18T7:30:4</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="CODIF">
            <timestamp>2017-6-19T5:23:5</timestamp>
            <rect width="64" x="384" y="20" height="24" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="320" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="TOP">
            <timestamp>2017-6-18T5:30:26</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="528" y="-172" height="24" />
            <line x2="592" y1="-160" y2="-160" x1="528" />
            <rect width="64" x="528" y="-44" height="24" />
            <line x2="592" y1="-32" y2="-32" x1="528" />
            <rect width="464" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="NUM_DISP">
            <timestamp>2017-6-18T5:43:1</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="OR_OP">
            <timestamp>2017-6-18T7:39:14</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="CLK_DIV1" name="XLXI_2">
            <blockpin signalname="CLK" name="CLKIN_IN" />
            <blockpin signalname="RST" name="RST_IN" />
            <blockpin signalname="RamClk" name="CLKDV_OUT" />
            <blockpin signalname="XLXN_41" name="CLK0_OUT" />
        </block>
        <block symbolname="UART_RX" name="XLXI_3">
            <blockpin signalname="XLXN_41" name="i_Clk" />
            <blockpin signalname="RsRx" name="i_RX_Serial" />
            <blockpin signalname="XLXN_70" name="o_RX_DV" />
            <blockpin signalname="XLXN_37(7:0)" name="o_RX_Byte(7:0)" />
        </block>
        <block symbolname="FSM_UART" name="XLXI_10">
            <blockpin signalname="XLXN_41" name="clk_in" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="XLXN_70" name="ena" />
            <blockpin signalname="RW" name="rw" />
            <blockpin signalname="XLXN_37(7:0)" name="serial_RX(7:0)" />
            <blockpin signalname="XLXN_96" name="mem_en" />
            <blockpin signalname="XLXN_40(15:0)" name="data(15:0)" />
        </block>
        <block symbolname="CONTROLADOR" name="XLXI_1">
            <blockpin signalname="RamClk" name="clk" />
            <blockpin signalname="RST" name="reset" />
            <blockpin signalname="XLXN_97" name="mem" />
            <blockpin signalname="RW" name="rw" />
            <blockpin signalname="XLXN_64(23:0)" name="addr(23:0)" />
            <blockpin signalname="XLXN_40(15:0)" name="data_f2s(15:0)" />
            <blockpin signalname="MemDB(15:0)" name="dio_a(15:0)" />
            <blockpin signalname="RamWait" name="ready" />
            <blockpin signalname="MemWR" name="we_n" />
            <blockpin signalname="MemOE" name="oe_n" />
            <blockpin signalname="RamCS" name="ce_a_n" />
            <blockpin signalname="RamUB" name="ub_a_n" />
            <blockpin signalname="RamLB" name="lb_a_n" />
            <blockpin signalname="XLXN_76(15:0)" name="data_s2f_r(15:0)" />
            <blockpin signalname="XLXN_77(15:0)" name="data_s2f_ur(15:0)" />
            <blockpin signalname="MemAdr(23:0)" name="ad(23:0)" />
        </block>
        <block symbolname="DIRECCIONAMIENTO" name="XLXI_14">
            <blockpin signalname="XLXN_41" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="RW" name="rw" />
            <blockpin signalname="XLXN_70" name="ena" />
            <blockpin signalname="XLXN_64(23:0)" name="addr(23:0)" />
        </block>
        <block symbolname="CODIF" name="XLXI_16">
            <blockpin signalname="XLXN_76(15:0)" name="data_s2f_r(15:0)" />
            <blockpin signalname="XLXN_77(15:0)" name="data_s2f_ur(15:0)" />
            <blockpin signalname="Led(7:0)" name="leds(7:0)" />
        </block>
        <block symbolname="TOP" name="XLXI_17">
            <blockpin signalname="CLK" name="CLK_IN" />
            <blockpin signalname="XLXN_91(11:0)" name="NUM_BIN(11:0)" />
            <blockpin signalname="RST" name="RST_IN" />
            <blockpin signalname="an(3:0)" name="MUX_OUT(3:0)" />
            <blockpin signalname="seg(6:0)" name="SEGMENTOS_OUT(6:0)" />
        </block>
        <block symbolname="NUM_DISP" name="XLXI_20">
            <blockpin signalname="XLXN_64(23:0)" name="addr(23:0)" />
            <blockpin signalname="XLXN_91(11:0)" name="num(11:0)" />
        </block>
        <block symbolname="OR_OP" name="XLXI_21">
            <blockpin signalname="RW" name="rw" />
            <blockpin signalname="XLXN_96" name="mem_en" />
            <blockpin signalname="XLXN_97" name="mem" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="560" name="XLXI_2" orien="R0">
        </instance>
        <branch name="RsRx">
            <wire x2="256" y1="960" y2="960" x1="240" />
        </branch>
        <instance x="256" y="992" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="240" y="960" name="RsRx" orien="R180" />
        <branch name="CLK">
            <wire x2="608" y1="528" y2="528" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="528" name="CLK" orien="R180" />
        <branch name="XLXN_37(7:0)">
            <wire x2="1056" y1="960" y2="960" x1="688" />
        </branch>
        <branch name="XLXN_40(15:0)">
            <wire x2="1856" y1="960" y2="960" x1="1440" />
        </branch>
        <branch name="RST">
            <wire x2="1056" y1="832" y2="832" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="832" name="RST" orien="R180" />
        <branch name="RST">
            <wire x2="608" y1="400" y2="400" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="400" name="RST" orien="R180" />
        <branch name="RamClk">
            <wire x2="1120" y1="400" y2="400" x1="1072" />
            <wire x2="1152" y1="400" y2="400" x1="1120" />
            <wire x2="1120" y1="400" y2="496" x1="1120" />
            <wire x2="1376" y1="496" y2="496" x1="1120" />
            <wire x2="1376" y1="400" y2="496" x1="1376" />
            <wire x2="1856" y1="400" y2="400" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1152" y="400" name="RamClk" orien="R0" />
        <instance x="1856" y="1008" name="XLXI_1" orien="R0">
        </instance>
        <branch name="MemWR">
            <wire x2="2368" y1="464" y2="464" x1="2336" />
        </branch>
        <branch name="MemOE">
            <wire x2="2368" y1="528" y2="528" x1="2336" />
        </branch>
        <branch name="RamCS">
            <wire x2="2368" y1="592" y2="592" x1="2336" />
        </branch>
        <branch name="RamUB">
            <wire x2="2368" y1="656" y2="656" x1="2336" />
        </branch>
        <branch name="RamLB">
            <wire x2="2368" y1="720" y2="720" x1="2336" />
        </branch>
        <branch name="RamWait">
            <wire x2="2368" y1="400" y2="400" x1="2336" />
        </branch>
        <branch name="MemAdr(23:0)">
            <wire x2="2368" y1="912" y2="912" x1="2336" />
        </branch>
        <branch name="RW">
            <wire x2="1856" y1="736" y2="736" x1="1824" />
        </branch>
        <branch name="RST">
            <wire x2="1856" y1="512" y2="512" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="2368" y="464" name="MemWR" orien="R0" />
        <iomarker fontsize="28" x="2368" y="528" name="MemOE" orien="R0" />
        <iomarker fontsize="28" x="2368" y="592" name="RamCS" orien="R0" />
        <iomarker fontsize="28" x="2368" y="656" name="RamUB" orien="R0" />
        <iomarker fontsize="28" x="2368" y="720" name="RamLB" orien="R0" />
        <iomarker fontsize="28" x="2368" y="400" name="RamWait" orien="R0" />
        <iomarker fontsize="28" x="2368" y="976" name="MemDB(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2368" y="912" name="MemAdr(23:0)" orien="R0" />
        <iomarker fontsize="28" x="1824" y="736" name="RW" orien="R180" />
        <iomarker fontsize="28" x="1824" y="512" name="RST" orien="R180" />
        <instance x="1216" y="1488" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_64(23:0)">
            <wire x2="1728" y1="1520" y2="1520" x1="1600" />
            <wire x2="1856" y1="848" y2="848" x1="1728" />
            <wire x2="1728" y1="848" y2="1408" x1="1728" />
            <wire x2="1728" y1="1408" y2="1520" x1="1728" />
            <wire x2="1888" y1="1408" y2="1408" x1="1728" />
        </branch>
        <branch name="RST">
            <wire x2="1216" y1="1264" y2="1264" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1264" name="RST" orien="R180" />
        <branch name="RW">
            <wire x2="1216" y1="1328" y2="1328" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1328" name="RW" orien="R180" />
        <instance x="1056" y="992" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_70">
            <wire x2="800" y1="896" y2="896" x1="688" />
            <wire x2="1056" y1="896" y2="896" x1="800" />
            <wire x2="800" y1="896" y2="1392" x1="800" />
            <wire x2="1216" y1="1392" y2="1392" x1="800" />
        </branch>
        <branch name="RW">
            <wire x2="1056" y1="1024" y2="1024" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1024" name="RW" orien="R180" />
        <branch name="XLXN_76(15:0)">
            <wire x2="2560" y1="784" y2="784" x1="2336" />
        </branch>
        <branch name="XLXN_77(15:0)">
            <wire x2="2560" y1="848" y2="848" x1="2336" />
        </branch>
        <instance x="2560" y="880" name="XLXI_16" orien="R0">
        </instance>
        <branch name="MemDB(15:0)">
            <wire x2="2368" y1="976" y2="976" x1="2336" />
        </branch>
        <branch name="RST">
            <wire x2="2416" y1="1216" y2="1216" x1="2320" />
        </branch>
        <branch name="CLK">
            <wire x2="2416" y1="1280" y2="1280" x1="2320" />
        </branch>
        <instance x="2416" y="1376" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2320" y="1216" name="RST" orien="R180" />
        <iomarker fontsize="28" x="2320" y="1280" name="CLK" orien="R180" />
        <branch name="an(3:0)">
            <wire x2="3040" y1="1216" y2="1216" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1216" name="an(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="3040" y1="1344" y2="1344" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1344" name="seg(6:0)" orien="R0" />
        <branch name="Led(7:0)">
            <wire x2="3040" y1="912" y2="912" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="912" name="Led(7:0)" orien="R0" />
        <instance x="1888" y="1440" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_91(11:0)">
            <wire x2="2416" y1="1408" y2="1408" x1="2272" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="736" y1="624" y2="624" x1="192" />
            <wire x2="880" y1="624" y2="624" x1="736" />
            <wire x2="1088" y1="624" y2="624" x1="880" />
            <wire x2="880" y1="624" y2="768" x1="880" />
            <wire x2="1056" y1="768" y2="768" x1="880" />
            <wire x2="736" y1="624" y2="1200" x1="736" />
            <wire x2="1216" y1="1200" y2="1200" x1="736" />
            <wire x2="192" y1="624" y2="896" x1="192" />
            <wire x2="256" y1="896" y2="896" x1="192" />
            <wire x2="1088" y1="528" y2="528" x1="1072" />
            <wire x2="1088" y1="528" y2="624" x1="1088" />
        </branch>
        <instance x="1424" y="704" name="XLXI_21" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1328" y="608" name="RW" orien="R180" />
        <branch name="RW">
            <wire x2="1424" y1="608" y2="608" x1="1328" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="1424" y1="672" y2="672" x1="1360" />
            <wire x2="1360" y1="672" y2="720" x1="1360" />
            <wire x2="1504" y1="720" y2="720" x1="1360" />
            <wire x2="1504" y1="720" y2="768" x1="1504" />
            <wire x2="1504" y1="768" y2="768" x1="1440" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="1824" y1="608" y2="608" x1="1808" />
            <wire x2="1824" y1="608" y2="624" x1="1824" />
            <wire x2="1856" y1="624" y2="624" x1="1824" />
        </branch>
    </sheet>
</drawing>