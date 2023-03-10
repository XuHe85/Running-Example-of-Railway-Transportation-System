<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n11">
            <attr name="layout">
                <string>100 299 36 18</string>
            </attr>
        </node>
        <node id="n15">
            <attr name="layout">
                <string>157 376 7 18</string>
            </attr>
        </node>
        <node id="n0">
            <attr name="layout">
                <string>104 230 30 18</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>180 228 30 18</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>87 157 71 18</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>210 73 31 18</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>268 229 30 18</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>354 227 30 18</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>448 226 30 18</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>527 228 30 18</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>607 228 30 18</string>
            </attr>
        </node>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>type:depth</string>
            </attr>
        </edge>
        <edge from="n11" to="n15">
            <attr name="label">
                <string>at</string>
            </attr>
        </edge>
        <edge from="n15" to="n15">
            <attr name="label">
                <string>int:0</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n0" to="n3">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n3" to="n2">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:target_train</string>
            </attr>
        </edge>
        <edge from="n4" to="n5">
            <attr name="label">
                <string>current_speed</string>
            </attr>
            <attr name="layout">
                <string>479 0 123 166 225 82 11</string>
            </attr>
        </edge>
        <edge from="n4" to="n0">
            <attr name="label">
                <string>on</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>string:"fast"</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n2" to="n6">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n6" to="n7">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n7" to="n8">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
        <edge from="n8" to="n1">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:track</string>
            </attr>
        </edge>
    </graph>
</gxl>
