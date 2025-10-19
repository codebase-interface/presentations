#!/bin/bash
# Script to list presentations for index.html
# This generates a JSON array that can be copied into index.html

echo "// Copy this array into index.html:"
echo "const presentations = ["

first=true
for dir in presentations/*/; do
    if [ -d "$dir" ]; then
        name=$(basename "$dir")
        
        if [ "$first" = true ]; then
            first=false
        else
            echo ","
        fi
        
        # Extract title from the presentation's index.html if possible
        title_file="$dir/index.html"
        if [ -f "$title_file" ]; then
            # Try to extract the first h1 tag
            title=$(grep -m 1 "<h1>" "$title_file" | sed 's/.*<h1>\(.*\)<\/h1>.*/\1/' | sed 's/^[[:space:]]*//')
            if [ -z "$title" ]; then
                # Fallback to name if no h1 found
                title="$name"
            fi
        else
            title="$name"
        fi
        
        echo -n "    { slug: '$name', title: '$title', description: 'Add description here' }"
    fi
done

echo ""
echo "];"
echo ""
echo "Update index.html with the above array!"
