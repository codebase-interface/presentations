#!/bin/bash
# Script to automatically update presentations array in index.html

# Generate presentations array
generate_presentations_array() {
    echo "["
    
    first=true
    for dir in */; do
        if [ -d "$dir" ] && [ -f "${dir}index.html" ] && [ -f "${dir}slides.md" ]; then
            name=$(basename "$dir")
            # Skip known system directories
            if [[ "$name" != "lib" && "$name" != "node_modules" && "$name" != ".git" && "$name" != "templates" && "$name" != "scripts" && "$name" != "presentations" ]]; then
                if [ "$first" = true ]; then
                    first=false
                else
                    echo ","
                fi
                
                # Extract title from slides.md first line or use formatted name
                title_file="$dir/slides.md"
                if [ -f "$title_file" ]; then
                    # Try to extract title from first line (assuming it's # Title)
                    title=$(head -n 1 "$title_file" | sed 's/^#\+[[:space:]]*//')
                    if [ -z "$title" ] || [ "$title" = "$(head -n 1 "$title_file")" ]; then
                        # Format the slug as title if no markdown title found
                        title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\w/\U&/g')
                    fi
                else
                    # Format the slug as title
                    title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\w/\U&/g')
                fi
                
                echo -n "                { "
                echo -n "slug: '$name', "
                echo -n "title: '$title', "
                echo -n "description: 'Click to view presentation' "
                echo -n "}"
            fi
        fi
    done
    
    echo ""
    echo "            ]"
}

# Update index.html with new presentations array
temp_file=$(mktemp)
in_presentations_array=false

while IFS= read -r line; do
    if [[ $line =~ ^[[:space:]]*const[[:space:]]+presentations[[:space:]]*=[[:space:]]*\[ ]]; then
        echo "            const presentations = $(generate_presentations_array);"
        in_presentations_array=true
    elif [[ $in_presentations_array == true && $line =~ "];" ]]; then
        in_presentations_array=false
        # Skip this line as it's already included in our generated array
    elif [[ $in_presentations_array == false ]]; then
        echo "$line"
    fi
done < index.html > "$temp_file"

mv "$temp_file" index.html
echo "✅ Updated index.html with current presentations"
