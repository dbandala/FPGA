<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RST" />
        <signal name="CLK" />
        <signal name="XLXN_36" />
        <signal name="XLXN_43" />
        <signal name="XLXN_38(11:0)" />
        <signal name="MUX(3:0)" />
        <signal name="SEG(6:0)" />
        <signal name="XLXN_83" />
        <signal name="XLXN_86(7:0)" />
        <signal name="LED(7:0)" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="MUX(3:0)" />
        <port polarity="Output" name="SEG(6:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <blockdef name="fsm">
            <timestamp>2017-6-9T18:47:4</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="edge_detect_mealy">
            <timestamp>2017-6-9T18:46:55</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="contador_v1">
            <timestamp>2017-6-9T18:46:33</timestamp>
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="320" />
        </blockdef>
        <blockdef name="TOP">
            <timestamp>2017-5-31T3:15:8</timestamp>
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
        <blockdef name="UART_RX">
            <timestamp>2017-6-18T3:23:19</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="FSM_LEDS">
            <timestamp>2017-6-9T18:47:17</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="fsm" name="XLXI_3">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="XLXN_83" name="sw" />
            <blockpin signalname="XLXN_36" name="db" />
        </block>
        <block symbolname="edge_detect_mealy" name="XLXI_4">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="XLXN_36" name="level" />
            <blockpin signalname="XLXN_43" name="tick" />
        </block>
        <block symbolname="contador_v1" name="XLXI_5">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="XLXN_43" name="en" />
            <blockpin signalname="XLXN_38(11:0)" name="cnt_out(11:0)" />
            <blockpin signalname="XLXN_86(7:0)" name="digito(7:0)" />
        </block>
        <block symbolname="TOP" name="XLXI_7">
            <blockpin signalname="CLK" name="CLK_IN" />
            <blockpin signalname="XLXN_38(11:0)" name="NUM_BIN(11:0)" />
            <blockpin signalname="RST" name="RST_IN" />
            <blockpin signalname="MUX(3:0)" name="MUX_OUT(3:0)" />
            <blockpin signalname="SEG(6:0)" name="SEGMENTOS_OUT(6:0)" />
        </block>
        <block symbolname="FSM_LEDS" name="XLXI_17">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_83" name="ena" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="XLXN_86(7:0)" name="datos(7:0)" />
            <blockpin signalname="LED(7:0)" name="led(7:0)" />
        </block>
        <block symbolname="UART_RX" name="XLXI_16">
            <blockpin signalname="CLK" name="i_Clk" />
            <blockpin name="i_RX_Serial" />
            <blockpin signalname="XLXN_83" name="o_RX_DV" />
            <blockpin signalname="XLXN_86(7:0)" name="o_RX_Byte(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RST">
            <wire x2="544" y1="720" y2="720" x1="448" />
        </branch>
        <branch name="CLK">
            <wire x2="544" y1="656" y2="656" x1="448" />
        </branch>
        <branch name="RST">
            <wire x2="1184" y1="720" y2="720" x1="1152" />
        </branch>
        <branch name="CLK">
            <wire x2="1184" y1="656" y2="656" x1="1152" />
        </branch>
        <instance x="1184" y="816" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_43">
            <wire x2="1600" y1="656" y2="656" x1="1568" />
            <wire x2="1600" y1="656" y2="848" x1="1600" />
            <wire x2="1776" y1="848" y2="848" x1="1600" />
        </branch>
        <instance x="1776" y="688" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1776" y1="656" y2="656" x1="1744" />
        </branch>
        <branch name="RST">
            <wire x2="1776" y1="784" y2="784" x1="1728" />
        </branch>
        <instance x="2416" y="816" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_38(11:0)">
            <wire x2="2256" y1="656" y2="656" x1="2160" />
            <wire x2="2256" y1="656" y2="848" x1="2256" />
            <wire x2="2416" y1="848" y2="848" x1="2256" />
        </branch>
        <branch name="RST">
            <wire x2="2416" y1="656" y2="656" x1="2384" />
        </branch>
        <branch name="CLK">
            <wire x2="2416" y1="720" y2="720" x1="2384" />
        </branch>
        <branch name="MUX(3:0)">
            <wire x2="3040" y1="656" y2="656" x1="3008" />
        </branch>
        <branch name="SEG(6:0)">
            <wire x2="3040" y1="784" y2="784" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="448" y="720" name="RST" orien="R180" />
        <iomarker fontsize="28" x="448" y="656" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1152" y="656" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1152" y="720" name="RST" orien="R180" />
        <iomarker fontsize="28" x="1744" y="656" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1728" y="784" name="RST" orien="R180" />
        <iomarker fontsize="28" x="2384" y="656" name="RST" orien="R180" />
        <iomarker fontsize="28" x="2384" y="720" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="3040" y="656" name="MUX(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3040" y="784" name="SEG(6:0)" orien="R0" />
        <instance x="544" y="816" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="1024" y1="656" y2="656" x1="928" />
            <wire x2="1024" y1="656" y2="784" x1="1024" />
            <wire x2="1184" y1="784" y2="784" x1="1024" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="544" y1="784" y2="784" x1="480" />
            <wire x2="480" y1="784" y2="976" x1="480" />
            <wire x2="688" y1="976" y2="976" x1="480" />
            <wire x2="688" y1="976" y2="1152" x1="688" />
            <wire x2="752" y1="976" y2="976" x1="688" />
            <wire x2="752" y1="976" y2="1072" x1="752" />
            <wire x2="928" y1="1072" y2="1072" x1="752" />
            <wire x2="688" y1="1152" y2="1152" x1="624" />
        </branch>
        <instance x="928" y="1232" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="896" y="1136" name="RST" orien="R180" />
        <iomarker fontsize="28" x="896" y="1008" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="192" y1="1152" y2="1152" x1="176" />
        </branch>
        <branch name="XLXN_86(7:0)">
            <wire x2="768" y1="1216" y2="1216" x1="624" />
            <wire x2="912" y1="1216" y2="1216" x1="768" />
            <wire x2="768" y1="1216" y2="1280" x1="768" />
            <wire x2="1600" y1="1280" y2="1280" x1="768" />
            <wire x2="928" y1="1200" y2="1200" x1="912" />
            <wire x2="912" y1="1200" y2="1216" x1="912" />
            <wire x2="1600" y1="912" y2="1280" x1="1600" />
            <wire x2="1776" y1="912" y2="912" x1="1600" />
        </branch>
        <branch name="RST">
            <wire x2="928" y1="1136" y2="1136" x1="896" />
        </branch>
        <branch name="CLK">
            <wire x2="928" y1="1008" y2="1008" x1="896" />
        </branch>
        <instance x="192" y="1248" name="XLXI_16" orien="R0">
        </instance>
        <iomarker fontsize="28" x="176" y="1152" name="CLK" orien="R180" />
        <branch name="LED(7:0)">
            <wire x2="1344" y1="1008" y2="1008" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="1008" name="LED(7:0)" orien="R0" />
    </sheet>
</drawing>