<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="s83">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n6">
            <attr name="layout">
                <string>385 426 28 18</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>780 424 28 18</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>679 423 28 18</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>976 425 28 18</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>385 322 36 36</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>875 424 28 18</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>453 493 102 54</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>557 310 71 54</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>613 493 135 54</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>475 424 28 18</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>567 423 51 18</string>
            </attr>
        </node>
        <node id="n24">
            <attr name="layout">
                <string>478 223 30 18</string>
            </attr>
        </node>
        <node id="n41">
            <attr name="layout">
                <string>351 176 30 18</string>
            </attr>
        </node>
        <node id="n75">
            <attr name="layout">
                <string>216 244 51 18</string>
            </attr>
        </node>
        <node id="n114">
            <attr name="layout">
                <string>111 312 71 54</string>
            </attr>
        </node>
        <node id="n157">
            <attr name="layout">
                <string>151 131 30 18</string>
            </attr>
        </node>
        <node id="n158">
            <attr name="layout">
                <string>304 424 30 18</string>
            </attr>
        </node>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n7" to="n8">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n8" to="n0">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n11" to="n12">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>type:depth</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>let:at = int:6</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n12" to="n7">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:car</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>flag:emergency_vehicle</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:is = string:"moving"</string>
            </attr>
        </edge>
        <edge from="n1" to="n11">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>type:traffic_light</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>flag:red</string>
            </attr>
        </edge>
        <edge from="n13" to="n0">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge from="n13" to="n13">
            <attr name="label">
                <string>flag:unconnected</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:target_train</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>let:current_speed = string:"stop"</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>flag:unconnected</string>
            </attr>
        </edge>
        <edge from="n2" to="n158">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:crossing</string>
            </attr>
        </edge>
        <edge from="n0" to="n5">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n24" to="n24">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n24" to="n0">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n41" to="n41">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n41" to="n24">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n75" to="n75">
            <attr name="label">
                <string>type:junction</string>
            </attr>
        </edge>
        <edge from="n75" to="n41">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n114" to="n114">
            <attr name="label">
                <string>type:traffic_light</string>
            </attr>
        </edge>
        <edge from="n114" to="n114">
            <attr name="label">
                <string>flag:green</string>
            </attr>
        </edge>
        <edge from="n114" to="n114">
            <attr name="label">
                <string>flag:unconnected</string>
            </attr>
        </edge>
        <edge from="n114" to="n75">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge from="n157" to="n157">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n157" to="n75">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n158" to="n158">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n158" to="n75">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
    </graph>
</gxl>
