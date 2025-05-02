#!/bin/bash

output_file="merged_taskgraph.graphml"

# Start the merged file with digraph definition
echo '<?xml version="1.0" encoding="UTF-8"?>' > "$output_file"
echo '<graphml xmlns="http://graphml.graphdrawing.org/xmlns"' >> "$output_file"
echo '         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' >> "$output_file"
echo '         xmlns:y="http://www.yworks.com/xml/graphml"' >> "$output_file"
echo '         xmlns:yed="http://www.yworks.com/xml/yed/3"' >> "$output_file"
echo '         xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns' >> "$output_file"
echo '         http://www.yworks.com/xml/schema/graphml/1.1/ygraphml.xsd">' >> "$output_file"
echo '  <key id="d0" for="node" yfiles.type="nodegraphics"/>' >> "$output_file"
echo '  <key id="d1" for="edge" yfiles.type="edgegraphics"/>' >> "$output_file"
echo '  <graph id="G" edgedefault="directed">' >> "$output_file"
echo '  ' >> "$output_file"
echo '    <node id="n00">' >> "$output_file"
echo '      <data key="d0">' >> "$output_file"
echo '        <y:ShapeNode>' >> "$output_file"
echo '          <y:Fill color="#FFCC00" transparent="false"/>' >> "$output_file"
echo '          <y:NodeLabel>Master_T</y:NodeLabel>' >> "$output_file"
echo '        </y:ShapeNode>' >> "$output_file"
echo '      </data>' >> "$output_file"
echo '    </node>' >> "$output_file"
echo '  ' >> "$output_file"
echo '    <node id="n01">' >> "$output_file"
echo '      <data key="d0">' >> "$output_file"
echo '        <y:ShapeNode>' >> "$output_file"
echo '          <y:Fill color="#FFCC00" transparent="false"/>' >> "$output_file"
echo '          <y:NodeLabel>Master_TE</y:NodeLabel>' >> "$output_file"
echo '        </y:ShapeNode>' >> "$output_file"
echo '      </data>' >> "$output_file"
echo '    </node>' >> "$output_file"
echo '  ' >> "$output_file"



for file in taskgraph_*.graphml; do
    cat $file >> "$output_file"
done

# End the merged file
echo "</graph> </graphml>" >> "$output_file"

echo "Merged files into $output_file"
