#!/bin/bash

output_file="merged_taskgraph.dot"

# Start the merged file with digraph definition
echo "digraph taskgraph {" > "$output_file"

# Append all content from taskgraph_*.dot, removing their own 'digraph taskgraph {' and '}'
for file in taskgraph_*.dot; do
    sed '/digraph taskgraph {/d; /}/d' "$file" >> "$output_file"
done

# End the merged file
echo "}" >> "$output_file"

echo "Merged files into $output_file"
