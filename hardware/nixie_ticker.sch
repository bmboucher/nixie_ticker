<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.0.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="nixie_ticker">
<packages>
<package name="IN14">
<circle x="0" y="0" radius="9.25" width="0.127" layer="21"/>
<circle x="0" y="0" radius="5.5" width="0.127" layer="51"/>
<text x="0" y="-3" size="1.27" layer="51" font="vector" align="center">FRONT</text>
<pad name="P$1" x="0" y="5.5" drill="1"/>
<pad name="P$2" x="2.556" y="4.87" drill="1"/>
<pad name="P$3" x="4.5264" y="3.1244" drill="1"/>
<pad name="P$4" x="5.4599" y="0.663" drill="1"/>
<circle x="0" y="0" radius="5.5" width="0.127" layer="51"/>
<pad name="P$6" x="3.6472" y="-4.1168" drill="1"/>
<pad name="P$5" x="5.1426" y="-1.9503" drill="1"/>
<pad name="P$7" x="1.3162" y="-5.3402" drill="1"/>
<pad name="P$8" x="-1.3162" y="-5.3402" drill="1"/>
<pad name="P$9" x="-3.6472" y="-4.1168" drill="1"/>
<pad name="P$10" x="-5.1426" y="-1.9503" drill="1"/>
<pad name="P$11" x="-5.4599" y="0.663" drill="1"/>
<pad name="P$12" x="-4.5264" y="3.1244" drill="1"/>
<pad name="P$13" x="-2.556" y="4.87" drill="1"/>
<text x="0" y="7.5" size="2.54" layer="21" font="vector" align="center">A</text>
<wire x1="0" y1="-2" x2="0" y2="4" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="0" y2="4" width="0.127" layer="21"/>
<wire x1="0" y1="4" x2="2" y2="2" width="0.127" layer="21"/>
<text x="6.3" y="4.3" size="2.54" layer="21" font="vector" align="center">1</text>
<text x="7.4" y="0.9" size="2.54" layer="21" font="vector" align="center">2</text>
<text x="6.9" y="-2.6" size="2.54" layer="21" font="vector" align="center">3</text>
<text x="4.9" y="-5.3" size="2.54" layer="21" font="vector" align="center">4</text>
<text x="2.1" y="-7.4" size="2.54" layer="21" font="vector" align="center">5</text>
<text x="-1.7" y="-7.5" size="2.54" layer="21" font="vector" align="center">6</text>
<text x="-4.9" y="-5.9" size="2.54" layer="21" font="vector" align="center">7</text>
<text x="-6.8" y="-2.7" size="2.54" layer="21" font="vector" align="center">8</text>
<text x="-7.5" y="0.7" size="2.54" layer="21" font="vector" align="center">9</text>
<text x="-6.4" y="4.2" size="2.54" layer="21" font="vector" align="center">0</text>
<text x="-3.3" y="6.8" size="1.9304" layer="21" font="vector" align="center">PR</text>
<text x="3.7" y="6.8" size="1.9304" layer="21" font="vector" align="center">PL</text>
</package>
<package name="DIP-16_SMD">
<wire x1="-3.81" y1="10.16" x2="-1.27" y2="10.16" width="0.127" layer="21"/>
<wire x1="1.27" y1="10.16" x2="3.81" y2="10.16" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-10.16" x2="3.81" y2="-10.16" width="0.127" layer="21"/>
<wire x1="1.27" y1="10.16" x2="-1.27" y2="10.16" width="0.127" layer="21" curve="-180"/>
<smd name="P$1" x="-3.81" y="8.89" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$2" x="-3.81" y="6.35" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$3" x="-3.81" y="3.81" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$4" x="-3.81" y="1.27" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$5" x="-3.81" y="-1.27" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$6" x="-3.81" y="-3.81" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$7" x="-3.81" y="-6.35" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$8" x="-3.81" y="-8.89" dx="1.524" dy="1.524" layer="1" roundness="100"/>
<smd name="P$9" x="3.81" y="-8.89" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
<smd name="P$10" x="3.81" y="-6.35" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
<smd name="P$11" x="3.81" y="-3.81" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
<smd name="P$12" x="3.81" y="-1.27" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
<smd name="P$13" x="3.81" y="1.27" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
<smd name="P$14" x="3.81" y="3.81" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
<smd name="P$15" x="3.81" y="6.35" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
<smd name="P$16" x="3.81" y="8.89" dx="1.524" dy="1.524" layer="1" roundness="100" rot="R180"/>
</package>
<package name="16SOIC">
<smd name="P$1" x="-4.51" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$2" x="-3.24" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$3" x="-1.97" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$4" x="-0.7" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$5" x="0.57" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$6" x="1.84" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$7" x="3.11" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$8" x="4.38" y="-2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$9" x="4.51" y="2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$10" x="3.24" y="2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$11" x="1.97" y="2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$12" x="0.7" y="2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$13" x="-0.57" y="2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$14" x="-1.84" y="2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$15" x="-3.11" y="2.54" dx="0.67" dy="1.45" layer="1" rot="R180"/>
<smd name="P$16" x="-4.445" y="2.475" dx="0.67" dy="1.45" layer="1"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="1.905" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.254" layer="21"/>
<circle x="-3.81" y="-0.635" radius="0.635" width="0.254" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="NIXIE">
<pin name="1" x="-7.62" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="2" x="-5.08" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="3" x="-2.54" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="4" x="0" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="5" x="2.54" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="6" x="5.08" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="7" x="7.62" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="8" x="10.16" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="9" x="12.7" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="0" x="-10.16" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="PL" x="-12.7" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="PR" x="15.24" y="-7.62" visible="pin" length="middle" rot="R90"/>
<wire x1="-15.24" y1="-5.08" x2="17.78" y2="-5.08" width="0.254" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="17.78" y2="7.62" width="0.254" layer="94"/>
<wire x1="17.78" y1="7.62" x2="-15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="-15.24" y1="7.62" x2="-15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-12.7" y1="5.08" x2="15.24" y2="5.08" width="0.254" layer="94"/>
<pin name="A" x="0" y="10.16" visible="pin" length="middle" rot="R270"/>
<text x="-13.97" y="8.255" size="1.778" layer="94">IN-14</text>
</symbol>
<symbol name="K155ID1">
<pin name="0" x="7.62" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="1" x="7.62" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="2" x="7.62" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="3" x="7.62" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="6" x="7.62" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="7" x="7.62" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="8" x="7.62" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="9" x="7.62" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="I1" x="-15.24" y="5.08" visible="pin" length="middle"/>
<pin name="I2" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="I4" x="-15.24" y="0" visible="pin" length="middle"/>
<pin name="I8" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="GND" x="-15.24" y="-10.16" visible="pin" length="middle"/>
<pin name="VCC" x="-15.24" y="12.7" visible="pin" length="middle"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="2.54" y2="-12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="-12.7" x2="2.54" y2="15.24" width="0.254" layer="94"/>
<wire x1="2.54" y1="15.24" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="-3.81" y="1.905" size="2.54" layer="94" font="vector" rot="R90" align="center">K155ID1</text>
</symbol>
<symbol name="74AHC595">
<pin name="Q0" x="10.16" y="10.16" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="Q1" x="10.16" y="7.62" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="Q2" x="10.16" y="5.08" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="Q3" x="10.16" y="2.54" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="Q4" x="10.16" y="0" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="Q5" x="10.16" y="-2.54" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="Q6" x="10.16" y="-5.08" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="Q7" x="10.16" y="-7.62" visible="pin" length="short" swaplevel="1" rot="R180"/>
<pin name="VCC" x="-10.16" y="10.16" visible="pin" length="short" swaplevel="1"/>
<pin name="MR" x="-10.16" y="7.62" visible="pin" length="short" swaplevel="1"/>
<pin name="DS" x="-10.16" y="5.08" visible="pin" length="short" swaplevel="1"/>
<pin name="SHCP" x="-10.16" y="2.54" visible="pin" length="short" swaplevel="1"/>
<pin name="STCP" x="-10.16" y="0" visible="pin" length="short" swaplevel="1"/>
<pin name="Q7S" x="-10.16" y="-2.54" visible="pin" length="short" swaplevel="1"/>
<pin name="OE" x="-10.16" y="-5.08" visible="pin" length="short" swaplevel="1"/>
<pin name="GND" x="-10.16" y="-7.62" visible="pin" length="short" swaplevel="1"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<text x="0" y="14.605" size="1.778" layer="94" font="vector" align="center">74AHC595</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="IN14">
<gates>
<gate name="G$1" symbol="NIXIE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="IN14">
<connects>
<connect gate="G$1" pin="0" pad="P$12"/>
<connect gate="G$1" pin="1" pad="P$3"/>
<connect gate="G$1" pin="2" pad="P$4"/>
<connect gate="G$1" pin="3" pad="P$5"/>
<connect gate="G$1" pin="4" pad="P$6"/>
<connect gate="G$1" pin="5" pad="P$7"/>
<connect gate="G$1" pin="6" pad="P$8"/>
<connect gate="G$1" pin="7" pad="P$9"/>
<connect gate="G$1" pin="8" pad="P$10"/>
<connect gate="G$1" pin="9" pad="P$11"/>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="PL" pad="P$2"/>
<connect gate="G$1" pin="PR" pad="P$13"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="K155ID1">
<gates>
<gate name="G$1" symbol="K155ID1" x="5.08" y="0"/>
</gates>
<devices>
<device name="" package="DIP-16_SMD">
<connects>
<connect gate="G$1" pin="0" pad="P$16"/>
<connect gate="G$1" pin="1" pad="P$15"/>
<connect gate="G$1" pin="2" pad="P$8"/>
<connect gate="G$1" pin="3" pad="P$9"/>
<connect gate="G$1" pin="4" pad="P$13"/>
<connect gate="G$1" pin="5" pad="P$14"/>
<connect gate="G$1" pin="6" pad="P$11"/>
<connect gate="G$1" pin="7" pad="P$10"/>
<connect gate="G$1" pin="8" pad="P$1"/>
<connect gate="G$1" pin="9" pad="P$2"/>
<connect gate="G$1" pin="GND" pad="P$12"/>
<connect gate="G$1" pin="I1" pad="P$3"/>
<connect gate="G$1" pin="I2" pad="P$6"/>
<connect gate="G$1" pin="I4" pad="P$7"/>
<connect gate="G$1" pin="I8" pad="P$4"/>
<connect gate="G$1" pin="VCC" pad="P$5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74AHC595">
<gates>
<gate name="G$1" symbol="74AHC595" x="0" y="0"/>
</gates>
<devices>
<device name="" package="16SOIC">
<connects>
<connect gate="G$1" pin="DS" pad="P$14"/>
<connect gate="G$1" pin="GND" pad="P$8"/>
<connect gate="G$1" pin="MR" pad="P$10"/>
<connect gate="G$1" pin="OE" pad="P$13"/>
<connect gate="G$1" pin="Q0" pad="P$15"/>
<connect gate="G$1" pin="Q1" pad="P$1"/>
<connect gate="G$1" pin="Q2" pad="P$2"/>
<connect gate="G$1" pin="Q3" pad="P$3"/>
<connect gate="G$1" pin="Q4" pad="P$4"/>
<connect gate="G$1" pin="Q5" pad="P$5"/>
<connect gate="G$1" pin="Q6" pad="P$6"/>
<connect gate="G$1" pin="Q7" pad="P$7"/>
<connect gate="G$1" pin="Q7S" pad="P$9"/>
<connect gate="G$1" pin="SHCP" pad="P$11"/>
<connect gate="G$1" pin="STCP" pad="P$12"/>
<connect gate="G$1" pin="VCC" pad="P$16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="nixie_ticker" deviceset="IN14" device=""/>
<part name="U$2" library="nixie_ticker" deviceset="IN14" device=""/>
<part name="U$7" library="nixie_ticker" deviceset="K155ID1" device=""/>
<part name="U$8" library="nixie_ticker" deviceset="K155ID1" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="U$5" library="nixie_ticker" deviceset="IN14" device=""/>
<part name="U$6" library="nixie_ticker" deviceset="K155ID1" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="U$11" library="nixie_ticker" deviceset="IN14" device=""/>
<part name="U$12" library="nixie_ticker" deviceset="K155ID1" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="U$15" library="nixie_ticker" deviceset="IN14" device=""/>
<part name="U$16" library="nixie_ticker" deviceset="K155ID1" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="U$19" library="nixie_ticker" deviceset="IN14" device=""/>
<part name="U$20" library="nixie_ticker" deviceset="K155ID1" device=""/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="U$3" library="nixie_ticker" deviceset="74AHC595" device=""/>
<part name="U$4" library="nixie_ticker" deviceset="74AHC595" device=""/>
<part name="U$9" library="nixie_ticker" deviceset="74AHC595" device=""/>
<part name="U$10" library="nixie_ticker" deviceset="74AHC595" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-93.98" y="15.24"/>
<instance part="U$2" gate="G$1" x="-55.88" y="15.24"/>
<instance part="U$7" gate="G$1" x="-91.44" y="-5.08" rot="R90"/>
<instance part="U$8" gate="G$1" x="-53.34" y="-5.08" rot="R90"/>
<instance part="GND1" gate="1" x="-81.28" y="-22.86"/>
<instance part="GND2" gate="1" x="-43.18" y="-22.86"/>
<instance part="P+1" gate="1" x="-104.14" y="-22.86" rot="R180"/>
<instance part="P+2" gate="1" x="-66.04" y="-22.86" rot="R180"/>
<instance part="U$5" gate="G$1" x="-17.78" y="15.24"/>
<instance part="U$6" gate="G$1" x="-15.24" y="-5.08" rot="R90"/>
<instance part="GND4" gate="1" x="-5.08" y="-22.86"/>
<instance part="P+4" gate="1" x="-27.94" y="-22.86" rot="R180"/>
<instance part="U$11" gate="G$1" x="20.32" y="15.24"/>
<instance part="U$12" gate="G$1" x="22.86" y="-5.08" rot="R90"/>
<instance part="GND6" gate="1" x="33.02" y="-22.86"/>
<instance part="P+6" gate="1" x="10.16" y="-22.86" rot="R180"/>
<instance part="U$15" gate="G$1" x="58.42" y="15.24"/>
<instance part="U$16" gate="G$1" x="60.96" y="-5.08" rot="R90"/>
<instance part="GND8" gate="1" x="71.12" y="-22.86"/>
<instance part="P+8" gate="1" x="48.26" y="-22.86" rot="R180"/>
<instance part="U$19" gate="G$1" x="96.52" y="15.24"/>
<instance part="U$20" gate="G$1" x="99.06" y="-5.08" rot="R90"/>
<instance part="GND10" gate="1" x="109.22" y="-22.86"/>
<instance part="P+10" gate="1" x="86.36" y="-22.86" rot="R180"/>
<instance part="U$3" gate="G$1" x="-83.82" y="-60.96" rot="R90"/>
<instance part="U$4" gate="G$1" x="-27.94" y="-60.96" rot="R90"/>
<instance part="U$9" gate="G$1" x="27.94" y="-60.96" rot="R90"/>
<instance part="U$10" gate="G$1" x="83.82" y="-60.96" rot="R90"/>
<instance part="P+3" gate="1" x="-99.06" y="-73.66" rot="R90"/>
<instance part="GND3" gate="1" x="-71.12" y="-73.66" rot="R90"/>
<instance part="P+5" gate="1" x="-43.18" y="-73.66" rot="R90"/>
<instance part="GND5" gate="1" x="-15.24" y="-73.66" rot="R90"/>
<instance part="P+7" gate="1" x="12.7" y="-73.66" rot="R90"/>
<instance part="GND7" gate="1" x="40.64" y="-73.66" rot="R90"/>
<instance part="P+9" gate="1" x="68.58" y="-73.66" rot="R90"/>
<instance part="GND9" gate="1" x="96.52" y="-73.66" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="0"/>
<pinref part="U$1" gate="G$1" pin="0"/>
<wire x1="-104.14" y1="2.54" x2="-104.14" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="1"/>
<wire x1="-101.6" y1="2.54" x2="-101.6" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="-99.06" y1="2.54" x2="-99.06" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="3"/>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="-96.52" y1="2.54" x2="-96.52" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="4"/>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="-93.98" y1="2.54" x2="-93.98" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="5"/>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="-91.44" y1="2.54" x2="-91.44" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="6"/>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="-88.9" y1="2.54" x2="-88.9" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="7"/>
<pinref part="U$1" gate="G$1" pin="7"/>
<wire x1="-86.36" y1="2.54" x2="-86.36" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="8"/>
<pinref part="U$1" gate="G$1" pin="8"/>
<wire x1="-83.82" y1="2.54" x2="-83.82" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="9"/>
<pinref part="U$1" gate="G$1" pin="9"/>
<wire x1="-81.28" y1="2.54" x2="-81.28" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="0"/>
<pinref part="U$2" gate="G$1" pin="0"/>
<wire x1="-66.04" y1="2.54" x2="-66.04" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="1"/>
<pinref part="U$2" gate="G$1" pin="1"/>
<wire x1="-63.5" y1="2.54" x2="-63.5" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="2"/>
<pinref part="U$2" gate="G$1" pin="2"/>
<wire x1="-60.96" y1="2.54" x2="-60.96" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="3"/>
<pinref part="U$2" gate="G$1" pin="3"/>
<wire x1="-58.42" y1="2.54" x2="-58.42" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="4"/>
<pinref part="U$2" gate="G$1" pin="4"/>
<wire x1="-55.88" y1="2.54" x2="-55.88" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="5"/>
<pinref part="U$2" gate="G$1" pin="5"/>
<wire x1="-53.34" y1="2.54" x2="-53.34" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="6"/>
<pinref part="U$2" gate="G$1" pin="6"/>
<wire x1="-50.8" y1="2.54" x2="-50.8" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="7"/>
<pinref part="U$2" gate="G$1" pin="7"/>
<wire x1="-48.26" y1="2.54" x2="-48.26" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="8"/>
<pinref part="U$2" gate="G$1" pin="8"/>
<wire x1="-45.72" y1="2.54" x2="-45.72" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="9"/>
<pinref part="U$2" gate="G$1" pin="9"/>
<wire x1="-43.18" y1="2.54" x2="-43.18" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$12" gate="G$1" pin="GND"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$16" gate="G$1" pin="GND"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$20" gate="G$1" pin="GND"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="OE"/>
<wire x1="-78.74" y1="-71.12" x2="-78.74" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="-78.74" y1="-73.66" x2="-76.2" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="-76.2" y1="-73.66" x2="-73.66" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="-71.12" x2="-76.2" y2="-73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="GND"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="-20.32" y1="-71.12" x2="-20.32" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-73.66" x2="-17.78" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="OE"/>
<wire x1="-22.86" y1="-71.12" x2="-22.86" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-73.66" x2="-20.32" y2="-73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="OE"/>
<wire x1="33.02" y1="-71.12" x2="33.02" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="38.1" y1="-73.66" x2="35.56" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="GND"/>
<wire x1="33.02" y1="-73.66" x2="35.56" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-73.66" x2="35.56" y2="-71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="OE"/>
<wire x1="88.9" y1="-71.12" x2="88.9" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="88.9" y1="-73.66" x2="91.44" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="GND"/>
<wire x1="91.44" y1="-73.66" x2="93.98" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-71.12" x2="91.44" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="VCC"/>
<pinref part="P+1" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="VCC"/>
<pinref part="P+2" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$20" gate="G$1" pin="VCC"/>
<pinref part="P+10" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$16" gate="G$1" pin="VCC"/>
<pinref part="P+8" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$12" gate="G$1" pin="VCC"/>
<pinref part="P+6" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="VCC"/>
<pinref part="P+4" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="P+3" gate="1" pin="+5V"/>
<pinref part="U$3" gate="G$1" pin="VCC"/>
<wire x1="-96.52" y1="-73.66" x2="-93.98" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-73.66" x2="-93.98" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="MR"/>
<wire x1="-93.98" y1="-73.66" x2="-91.44" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="-73.66" x2="-91.44" y2="-71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+5" gate="1" pin="+5V"/>
<pinref part="U$4" gate="G$1" pin="VCC"/>
<wire x1="-40.64" y1="-73.66" x2="-38.1" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-73.66" x2="-38.1" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-73.66" x2="-35.56" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="MR"/>
<wire x1="-35.56" y1="-73.66" x2="-35.56" y2="-71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+7" gate="1" pin="+5V"/>
<wire x1="15.24" y1="-73.66" x2="17.78" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="VCC"/>
<wire x1="17.78" y1="-73.66" x2="17.78" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-73.66" x2="20.32" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="MR"/>
<wire x1="20.32" y1="-73.66" x2="20.32" y2="-71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="VCC"/>
<pinref part="P+9" gate="1" pin="+5V"/>
<wire x1="73.66" y1="-71.12" x2="73.66" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-73.66" x2="71.12" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="MR"/>
<wire x1="73.66" y1="-73.66" x2="76.2" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-73.66" x2="76.2" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND2" class="0">
</net>
<net name="+5V2" class="0">
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="0"/>
<pinref part="U$5" gate="G$1" pin="0"/>
<wire x1="-27.94" y1="2.54" x2="-27.94" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="1"/>
<pinref part="U$5" gate="G$1" pin="1"/>
<wire x1="-25.4" y1="2.54" x2="-25.4" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="2"/>
<pinref part="U$5" gate="G$1" pin="2"/>
<wire x1="-22.86" y1="2.54" x2="-22.86" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="3"/>
<pinref part="U$5" gate="G$1" pin="3"/>
<wire x1="-20.32" y1="2.54" x2="-20.32" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="4"/>
<pinref part="U$5" gate="G$1" pin="4"/>
<wire x1="-17.78" y1="2.54" x2="-17.78" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="5"/>
<pinref part="U$5" gate="G$1" pin="5"/>
<wire x1="-15.24" y1="2.54" x2="-15.24" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="6"/>
<pinref part="U$5" gate="G$1" pin="6"/>
<wire x1="-12.7" y1="2.54" x2="-12.7" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="7"/>
<pinref part="U$5" gate="G$1" pin="7"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="8"/>
<pinref part="U$5" gate="G$1" pin="8"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="9"/>
<pinref part="U$5" gate="G$1" pin="9"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND3" class="0">
</net>
<net name="+5V3" class="0">
</net>
<net name="N$61" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="0"/>
<pinref part="U$11" gate="G$1" pin="0"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="1"/>
<pinref part="U$11" gate="G$1" pin="1"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="2"/>
<pinref part="U$11" gate="G$1" pin="2"/>
<wire x1="15.24" y1="2.54" x2="15.24" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="3"/>
<pinref part="U$11" gate="G$1" pin="3"/>
<wire x1="17.78" y1="2.54" x2="17.78" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="4"/>
<pinref part="U$11" gate="G$1" pin="4"/>
<wire x1="20.32" y1="2.54" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="5"/>
<pinref part="U$11" gate="G$1" pin="5"/>
<wire x1="22.86" y1="2.54" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="6"/>
<pinref part="U$11" gate="G$1" pin="6"/>
<wire x1="25.4" y1="2.54" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="7"/>
<pinref part="U$11" gate="G$1" pin="7"/>
<wire x1="27.94" y1="2.54" x2="27.94" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="8"/>
<pinref part="U$11" gate="G$1" pin="8"/>
<wire x1="30.48" y1="2.54" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="9"/>
<pinref part="U$11" gate="G$1" pin="9"/>
<wire x1="33.02" y1="2.54" x2="33.02" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND5" class="0">
</net>
<net name="+5V5" class="0">
</net>
<net name="N$91" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="0"/>
<pinref part="U$15" gate="G$1" pin="0"/>
<wire x1="48.26" y1="2.54" x2="48.26" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="1"/>
<pinref part="U$15" gate="G$1" pin="1"/>
<wire x1="50.8" y1="2.54" x2="50.8" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="2"/>
<pinref part="U$15" gate="G$1" pin="2"/>
<wire x1="53.34" y1="2.54" x2="53.34" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="3"/>
<pinref part="U$15" gate="G$1" pin="3"/>
<wire x1="55.88" y1="2.54" x2="55.88" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="4"/>
<pinref part="U$15" gate="G$1" pin="4"/>
<wire x1="58.42" y1="2.54" x2="58.42" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="5"/>
<pinref part="U$15" gate="G$1" pin="5"/>
<wire x1="60.96" y1="2.54" x2="60.96" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$97" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="6"/>
<pinref part="U$15" gate="G$1" pin="6"/>
<wire x1="63.5" y1="2.54" x2="63.5" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$98" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="7"/>
<pinref part="U$15" gate="G$1" pin="7"/>
<wire x1="66.04" y1="2.54" x2="66.04" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$99" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="8"/>
<pinref part="U$15" gate="G$1" pin="8"/>
<wire x1="68.58" y1="2.54" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$100" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="9"/>
<pinref part="U$15" gate="G$1" pin="9"/>
<wire x1="71.12" y1="2.54" x2="71.12" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND7" class="0">
</net>
<net name="+5V7" class="0">
</net>
<net name="N$121" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="0"/>
<pinref part="U$19" gate="G$1" pin="0"/>
<wire x1="86.36" y1="2.54" x2="86.36" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$122" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="1"/>
<pinref part="U$19" gate="G$1" pin="1"/>
<wire x1="88.9" y1="2.54" x2="88.9" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$123" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="2"/>
<pinref part="U$19" gate="G$1" pin="2"/>
<wire x1="91.44" y1="2.54" x2="91.44" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$124" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="3"/>
<pinref part="U$19" gate="G$1" pin="3"/>
<wire x1="93.98" y1="2.54" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$125" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="4"/>
<pinref part="U$19" gate="G$1" pin="4"/>
<wire x1="96.52" y1="2.54" x2="96.52" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$126" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="5"/>
<pinref part="U$19" gate="G$1" pin="5"/>
<wire x1="99.06" y1="2.54" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$127" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="6"/>
<pinref part="U$19" gate="G$1" pin="6"/>
<wire x1="101.6" y1="2.54" x2="101.6" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$128" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="7"/>
<pinref part="U$19" gate="G$1" pin="7"/>
<wire x1="104.14" y1="2.54" x2="104.14" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$129" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="8"/>
<pinref part="U$19" gate="G$1" pin="8"/>
<wire x1="106.68" y1="2.54" x2="106.68" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$130" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="9"/>
<pinref part="U$19" gate="G$1" pin="9"/>
<wire x1="109.22" y1="2.54" x2="109.22" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND9" class="0">
</net>
<net name="+5V9" class="0">
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="Q7S"/>
<wire x1="-81.28" y1="-71.12" x2="-81.28" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-76.2" x2="-33.02" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="DS"/>
<wire x1="-33.02" y1="-76.2" x2="-33.02" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q7S"/>
<wire x1="-25.4" y1="-71.12" x2="-25.4" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-76.2" x2="22.86" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="DS"/>
<wire x1="22.86" y1="-76.2" x2="22.86" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q7S"/>
<wire x1="30.48" y1="-71.12" x2="30.48" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-76.2" x2="78.74" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="DS"/>
<wire x1="78.74" y1="-76.2" x2="78.74" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="I1"/>
<wire x1="-58.42" y1="-33.02" x2="-58.42" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="Q5"/>
<wire x1="-81.28" y1="-50.8" x2="-81.28" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-33.02" x2="-58.42" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="I2"/>
<wire x1="-55.88" y1="-35.56" x2="-55.88" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="Q6"/>
<wire x1="-78.74" y1="-50.8" x2="-78.74" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-35.56" x2="-55.88" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="I4"/>
<wire x1="-53.34" y1="-38.1" x2="-53.34" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="Q7"/>
<wire x1="-76.2" y1="-50.8" x2="-76.2" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="-38.1" x2="-53.34" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="Q0"/>
<pinref part="U$7" gate="G$1" pin="I1"/>
<wire x1="-93.98" y1="-50.8" x2="-96.52" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="-50.8" x2="-96.52" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="Q1"/>
<wire x1="-91.44" y1="-50.8" x2="-91.44" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="-48.26" x2="-93.98" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="I2"/>
<wire x1="-93.98" y1="-48.26" x2="-93.98" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="Q2"/>
<wire x1="-88.9" y1="-50.8" x2="-88.9" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-45.72" x2="-91.44" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="I4"/>
<wire x1="-91.44" y1="-45.72" x2="-91.44" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="Q3"/>
<wire x1="-86.36" y1="-50.8" x2="-86.36" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="-43.18" x2="-88.9" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="I8"/>
<wire x1="-88.9" y1="-43.18" x2="-88.9" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="Q4"/>
<wire x1="-83.82" y1="-50.8" x2="-83.82" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-30.48" x2="-73.66" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-30.48" x2="-73.66" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="27.94" x2="-83.82" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q0"/>
<wire x1="-38.1" y1="-50.8" x2="-50.8" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="I8"/>
<wire x1="-50.8" y1="-50.8" x2="-50.8" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<wire x1="-40.64" y1="2.54" x2="-38.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="2.54" x2="-38.1" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-48.26" x2="-35.56" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="Q1"/>
<wire x1="-35.56" y1="-48.26" x2="-35.56" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q2"/>
<wire x1="-33.02" y1="-50.8" x2="-33.02" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-45.72" x2="-35.56" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-45.72" x2="-35.56" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="25.4" x2="-45.72" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q3"/>
<wire x1="-30.48" y1="-50.8" x2="-30.48" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-25.4" x2="-20.32" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="I1"/>
<wire x1="-20.32" y1="-25.4" x2="-20.32" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q4"/>
<wire x1="-27.94" y1="-50.8" x2="-27.94" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-27.94" x2="-17.78" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="I2"/>
<wire x1="-17.78" y1="-27.94" x2="-17.78" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q5"/>
<wire x1="-25.4" y1="-50.8" x2="-25.4" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-30.48" x2="-15.24" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="I4"/>
<wire x1="-15.24" y1="-30.48" x2="-15.24" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q6"/>
<wire x1="-22.86" y1="-50.8" x2="-22.86" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-33.02" x2="-12.7" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="I8"/>
<wire x1="-12.7" y1="-33.02" x2="-12.7" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="Q7"/>
<wire x1="-20.32" y1="-50.8" x2="-20.32" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-35.56" x2="2.54" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-35.56" x2="2.54" y2="25.4" width="0.1524" layer="91"/>
<wire x1="2.54" y1="25.4" x2="-5.08" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q3"/>
<pinref part="U$12" gate="G$1" pin="I1"/>
<wire x1="25.4" y1="-50.8" x2="17.78" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q4"/>
<pinref part="U$12" gate="G$1" pin="I2"/>
<wire x1="27.94" y1="-50.8" x2="20.32" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q5"/>
<pinref part="U$12" gate="G$1" pin="I4"/>
<wire x1="30.48" y1="-50.8" x2="22.86" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q0"/>
<pinref part="U$12" gate="G$1" pin="I8"/>
<wire x1="17.78" y1="-50.8" x2="25.4" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q1"/>
<wire x1="20.32" y1="-50.8" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="35.56" y1="0" x2="38.1" y2="0" width="0.1524" layer="91"/>
<wire x1="38.1" y1="0" x2="38.1" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-25.4" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q2"/>
<wire x1="22.86" y1="-50.8" x2="30.48" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-27.94" x2="40.64" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-27.94" x2="40.64" y2="30.48" width="0.1524" layer="91"/>
<wire x1="40.64" y1="30.48" x2="33.02" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="Q7"/>
<wire x1="35.56" y1="-50.8" x2="33.02" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-30.48" x2="55.88" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="I1"/>
<wire x1="55.88" y1="-30.48" x2="55.88" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q3"/>
<wire x1="81.28" y1="-50.8" x2="60.96" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="I4"/>
<wire x1="60.96" y1="-43.18" x2="60.96" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="I8"/>
<wire x1="63.5" y1="-20.32" x2="63.5" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="Q6"/>
<wire x1="33.02" y1="-50.8" x2="35.56" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-48.26" x2="63.5" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q1"/>
<wire x1="76.2" y1="-50.8" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
<wire x1="78.74" y1="27.94" x2="71.12" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$81" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q4"/>
<wire x1="83.82" y1="-50.8" x2="81.28" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-25.4" x2="93.98" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="I1"/>
<wire x1="93.98" y1="-25.4" x2="93.98" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q6"/>
<wire x1="88.9" y1="-50.8" x2="83.82" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-27.94" x2="96.52" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="I2"/>
<wire x1="96.52" y1="-27.94" x2="96.52" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$83" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q7"/>
<wire x1="91.44" y1="-50.8" x2="86.36" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-30.48" x2="99.06" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="I4"/>
<wire x1="99.06" y1="-30.48" x2="99.06" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q5"/>
<wire x1="86.36" y1="-50.8" x2="88.9" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-33.02" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="I8"/>
<wire x1="101.6" y1="-33.02" x2="101.6" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$85" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q0"/>
<wire x1="73.66" y1="-50.8" x2="91.44" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-35.56" x2="116.84" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-35.56" x2="116.84" y2="27.94" width="0.1524" layer="91"/>
<wire x1="116.84" y1="27.94" x2="106.68" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$86" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="STCP"/>
<wire x1="-83.82" y1="-71.12" x2="-83.82" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-78.74" x2="-27.94" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="STCP"/>
<wire x1="-27.94" y1="-78.74" x2="-27.94" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-78.74" x2="27.94" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="STCP"/>
<wire x1="27.94" y1="-78.74" x2="27.94" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-78.74" x2="-83.82" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="STCP"/>
<wire x1="27.94" y1="-78.74" x2="83.82" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-78.74" x2="83.82" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="SHCP"/>
<wire x1="-86.36" y1="-71.12" x2="-86.36" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="-81.28" x2="-30.48" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="SHCP"/>
<wire x1="-30.48" y1="-81.28" x2="-30.48" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-81.28" x2="25.4" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="SHCP"/>
<wire x1="25.4" y1="-81.28" x2="25.4" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="-81.28" x2="-86.36" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="SHCP"/>
<wire x1="81.28" y1="-71.12" x2="81.28" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-81.28" x2="25.4" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="DS"/>
<wire x1="-88.9" y1="-71.12" x2="-88.9" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$101" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="Q2"/>
<pinref part="U$16" gate="G$1" pin="I2"/>
<wire x1="58.42" y1="-33.02" x2="58.42" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-50.8" x2="76.2" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-33.02" x2="58.42" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
