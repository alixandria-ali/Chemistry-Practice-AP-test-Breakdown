#!/bin/bash

# Function to convert markdown to HTML
convert_md_to_html() {
    local md_file=$1
    local html_file="${md_file%.md}.html"
    
    echo "Converting $md_file to $html_file"
    
    # Read the markdown content
    content=$(cat "$md_file")
    
    # Create HTML file
    cat > "$html_file" << HTMLEOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$(basename "$md_file" .md) - AP Chemistry Breakdown</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/github-markdown-css@5.1.0/github-markdown.min.css">
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif;
            background: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            background: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        .nav-bar {
            background: #2c3e50;
            color: white;
            padding: 15px 20px;
            margin: -40px -40px 30px -40px;
            border-radius: 8px 8px 0 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .nav-bar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            padding: 5px 10px;
            border-radius: 3px;
            transition: background 0.3s;
        }
        .nav-bar a:hover {
            background: rgba(255,255,255,0.1);
        }
        .markdown-body {
            box-sizing: border-box;
            min-width: 200px;
            max-width: 980px;
        }
        h1 { color: #2c3e50; border-bottom: 3px solid #3498db; padding-bottom: 10px; }
        h2 { color: #34495e; margin-top: 30px; border-bottom: 2px solid #ecf0f1; padding-bottom: 8px; }
        h3 { color: #5a6c7d; }
        code { background: #f4f4f4; padding: 2px 6px; border-radius: 3px; }
        pre { background: #f4f4f4; padding: 15px; border-radius: 5px; overflow-x: auto; }
        table { border-collapse: collapse; width: 100%; margin: 20px 0; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background: #3498db; color: white; }
        tr:nth-child(even) { background: #f9f9f9; }
        a { color: #3498db; text-decoration: none; }
        a:hover { text-decoration: underline; }
        blockquote { border-left: 4px solid #3498db; padding-left: 20px; margin-left: 0; color: #555; }
        .practice-section { background: #e8f4f8; padding: 20px; border-radius: 8px; margin: 20px 0; border-left: 4px solid #3498db; }
        .feedback-section { background: #fff3cd; padding: 20px; border-radius: 8px; margin: 20px 0; border-left: 4px solid #f39c12; }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="nav-bar">
            <div>
                <a href="index.html">🏠 Home</a>
                <a href="INDEX.html">📋 All Questions</a>
                <a href="QUICK_START.html">📚 Quick Start</a>
            </div>
            <a href="https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown">GitHub</a>
        </div>
        <div class="markdown-body" id="content"></div>
    </div>
    <script>
        const markdown = \`$content\`;
        document.getElementById('content').innerHTML = marked.parse(markdown);
    </script>
</body>
</html>
HTMLEOF
}

# Convert all markdown files
for file in Q*.md INDEX.md README.md QUICK_START.md CONTRIBUTING.md STRUCTURE.md; do
    if [ -f "$file" ]; then
        convert_md_to_html "$file"
    fi
done

echo "Conversion complete!"
