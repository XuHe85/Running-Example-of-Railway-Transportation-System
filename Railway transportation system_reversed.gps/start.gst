<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n3">
            <attr name="layout">
                <string>567 414 51 36</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>465 493 78 54</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>648 500 71 36</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>836 508 36 18</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>347 513 59 18</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>475 424 28 18</string>
            </attr>
        </node>
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
        <node id="n10">
            <attr name="layout">
                <string>335 309 36 18</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>110 371 7 18</string>
            </attr>
        </node>
        <node id="n12">
            <attr name="layout">
                <string>976 425 28 18</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>875 424 28 18</string>
            </attr>
        </node>
        <node id="n13">
            <attr name="layout">
                <string>624 322 71 36</string>
            </attr>
        </node>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:crossing</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>flag:accident</string>
            </attr>
        </edge>
        <edge from="n3" to="n4">
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
                <string>flag:crash</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>flag:emergency_vehicle</string>
            </attr>
        </edge>
        <edge from="n1" to="n3">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge from="n1" to="n2">
            <attr name="label">
                <string>is</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:target_train</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>flag:crash</string>
            </attr>
        </edge>
        <edge from="n0" to="n3">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge from="n0" to="n5">
            <attr name="label">
                <string>current_speed</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>string:"stop"</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>string:"stopped"</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n4" to="n6">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
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
        <edge from="n8" to="n3">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:depth</string>
            </attr>
        </edge>
        <edge from="n10" to="n9">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n12" to="n12">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n12" to="n11">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:road</string>
            </attr>
        </edge>
        <edge from="n11" to="n7">
            <attr name="label">
                <string>to</string>
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
        <edge from="n13" to="n3">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
    </graph>
</gxl>
