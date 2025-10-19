#!/bin/bash
# Script to add Mermaid support to existing presentations

echo "Adding Mermaid support to existing presentations..."

# Find all presentation directories (exclude system directories)
for dir in */; do
    if [ -d "$dir" ] && [ -f "${dir}index.html" ] && [ -f "${dir}slides.md" ]; then
        name=$(basename "$dir")
        # Skip known system directories
        if [[ "$name" != "lib" && "$name" != "node_modules" && "$name" != ".git" && "$name" != "templates" && "$name" != "scripts" && "$name" != "presentations" ]]; then
            index_file="${dir}index.html"
            
            # Check if Mermaid is already added
            if ! grep -q "mermaid" "$index_file"; then
                echo "  📊 Adding Mermaid to: $name"
                
                # Add Mermaid script after highlight CSS
                sed -i '/monokai\.css/a\    <!-- Mermaid CSS -->\n    <script src="https://cdn.jsdelivr.net/npm/mermaid@10.6.1/dist/mermaid.min.js"></script>' "$index_file"
                
                # Add Mermaid initialization before Reveal.initialize
                sed -i '/Reveal\.initialize/i\        // Initialize Mermaid\n        mermaid.initialize({ \n            startOnLoad: false,\n            theme: '\''dark'\'',\n            themeVariables: {\n                darkMode: true\n            }\n        });\n' "$index_file"
                
                # Add Mermaid event handlers after Reveal.initialize block
                sed -i '/transition: '\''slide'\''/a\        });\n\n        // Initialize Mermaid diagrams when slides change\n        Reveal.on('\''slidechanged'\'', function() {\n            mermaid.init(undefined, document.querySelectorAll('\''.mermaid:not([data-processed])'\''));\n        });\n\n        // Initialize Mermaid diagrams on ready\n        Reveal.on('\''ready'\'', function() {\n            mermaid.init(undefined, document.querySelectorAll('\''.mermaid:not([data-processed])'\''));\n        });' "$index_file"
                
                # Remove the duplicate closing brace and script tag that got added
                sed -i '/transition: '\''slide'\''/,/^[[:space:]]*});$/ { /^[[:space:]]*});$/d; }' "$index_file"
            else
                echo "  ✅ Mermaid already enabled: $name"
            fi
        fi
    fi
done

echo "✅ Mermaid support added to all presentations"