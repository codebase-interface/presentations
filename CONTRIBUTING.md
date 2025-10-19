# Contributing to Presentations

This repository hosts reveal.js-based presentations for the Codebase Interface organization, deployed at `codebaseinterface.org/presentations/`.

## Quick Workflow Overview

```
1. Create presentation:        task new -- my-presentation
2. Edit slides:                presentations/my-presentation/slides.md
3. Test locally:               task serve
4. Add to index:               index.html (update presentations array)
5. Commit & push:              Git workflow
6. Auto-deploy:                GitHub Actions → GitHub Pages
7. Live at:                    codebaseinterface.org/presentations/my-presentation/
```

## Prerequisites

- [Node.js](https://nodejs.org/) (v14 or higher)
- [Task](https://taskfile.dev/) - A task runner / build tool
- Git

### Installing Task

**macOS/Linux:**
```bash
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
```

**Windows (with Scoop):**
```bash
scoop install task
```

**Or use npm:**
```bash
npm install -g @go-task/cli
```

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/codebase-interface/presentations.git
   cd presentations
   ```

2. **Install dependencies:**
   ```bash
   task install
   ```

## Creating a New Presentation

### Using the Task Command

The easiest way to create a new presentation is using the `task new` command:

```bash
task new -- my-presentation-name
```

This will:
- Create a new directory under `presentations/my-presentation-name/`
- Copy the presentation template (HTML and Markdown files)
- Set up the basic structure with sample slides in Markdown
- Show you the next steps

**Example:**
```bash
task new -- introduction-to-ai
```

### Manual Creation

If you prefer to create a presentation manually:

1. Create a new directory under `presentations/`:
   ```bash
   mkdir -p presentations/my-presentation
   ```

2. Copy the template:
   ```bash
   cp -r templates/presentation/* presentations/my-presentation/
   ```

3. Edit the `presentations/my-presentation/slides.md` file to add your content in Markdown.

## Editing Your Presentation

Presentations use Markdown format, making them easy to write and maintain!

1. Open `presentations/your-presentation-name/slides.md` in your favorite editor.

2. Use `---` to separate horizontal slides:
   ```markdown
   # First Slide

   Content for first slide

   ---

   # Second Slide

   Content for second slide
   ```

3. Use `--` for vertical slides (sub-slides):
   ```markdown
   # Main Topic

   ---

   ## Subtopic 1

   --

   ## Subtopic 2

   --

   ## Subtopic 3
   ```

4. Format text with Markdown:
   ```markdown
   # Heading 1
   ## Heading 2
   
   **Bold text**
   *Italic text*
   `Inline code`
   
   - Bullet point 1
   - Bullet point 2
   
   1. Numbered item 1
   2. Numbered item 2
   
   [Link text](https://example.com)
   ```

5. Add code blocks with syntax highlighting:
   ```markdown
   ```javascript
   function example() {
       return "Hello World";
   }
   ` ``
   ```

6. Add fragment animations (step-by-step reveals):
   ```markdown
   - First item <!-- .element: class="fragment" -->
   - Second item <!-- .element: class="fragment" -->
   - Third item <!-- .element: class="fragment" -->
   ```

7. Add speaker notes:
   ```markdown
   This is slide content

   Note:
   These are speaker notes that only appear in presenter view
   ```

### Advanced HTML in Markdown

You can also use HTML within your Markdown for more control:

```markdown
<div style="color: red;">
Custom styled content
</div>
```

## Testing Locally

Start the local development server:

```bash
task serve
```

Then open your browser to:
- Main page: http://localhost:8000/
- Your presentation: http://localhost:8000/presentations/your-presentation-name/

**Navigation tips:**
- Use arrow keys to navigate between slides
- Press `F` for fullscreen
- Press `S` for speaker notes view
- Press `ESC` for slide overview

## Available Task Commands

Run `task --list` to see all available commands:

- `task install` - Install dependencies
- `task new -- <name>` - Create a new presentation
- `task serve` - Start local development server
- `task list` - List all presentations
- `task clean` - Clean generated files
- `task help` - Show available commands

## Adding Your Presentation to the Index

After creating a presentation, add it to the main index page so it appears on the homepage:

### Option 1: Using the helper script (Recommended)

1. Run the script to generate the presentations array:
   ```bash
   task update-index
   ```

2. Copy the output and paste it into `index.html`, replacing the existing `presentations` array.

3. Update the descriptions manually to make them more meaningful.

### Option 2: Manual Update

1. Open `index.html` in the root directory
2. Find the `presentations` array in the JavaScript section
3. Add your presentation:
   ```javascript
   const presentations = [
       { 
           slug: 'my-presentation', 
           title: 'My Presentation Title', 
           description: 'A brief description of the presentation' 
       }
   ];
   ```

## Reveal.js Features

This setup includes the following reveal.js plugins:
- **Markdown** - Write slides in Markdown (primary method)
- **Highlight** - Syntax highlighting for code
- **Notes** - Speaker notes (press `S` during presentation)

### Advanced Features in Markdown

**Backgrounds:**

Add backgrounds using HTML comments:
```markdown
<!-- .slide: data-background-color="#ff0000" -->
# Red Background Slide

---

<!-- .slide: data-background-image="image.jpg" -->
# Image Background Slide
```

**Transitions:**
```markdown
<!-- .slide: data-transition="zoom" -->
# This Slide Zooms In
```

**Custom Classes and Styles:**
```markdown
This text is red <!-- .element: style="color: red;" -->

Centered content <!-- .element: class="r-fit-text" -->
```

For more features, see the [reveal.js documentation](https://revealjs.com/).

## Customizing Themes

The template uses the `black` theme by default. You can change it by editing the theme link in your presentation's HTML:

```html
<link rel="stylesheet" href="../../node_modules/reveal.js/dist/theme/black.css">
```

Available themes:
- `black.css` (default) - Dark background
- `white.css` - Light background
- `league.css` - Gray background, blue links
- `beige.css` - Beige background
- `sky.css` - Blue gradient background
- `night.css` - Black background, thick headers
- `serif.css` - Cappuccino background with serif text
- `simple.css` - White background, black text
- `solarized.css` - Cream-colored background
- `moon.css` - Dark blue background
- `dracula.css` - Dracula color scheme
- `blood.css` - Dark background, blood red accents

## Deployment

The repository is automatically deployed to GitHub Pages when changes are pushed to the main branch. Your presentation will be available at:

```
https://codebaseinterface.org/presentations/your-presentation-name/
```

## Best Practices

1. **Keep it simple** - Focus on key points, avoid text-heavy slides
2. **Use visuals** - Images, diagrams, and code examples are powerful
3. **Test locally** - Always preview your presentation before committing
4. **Consistent naming** - Use lowercase and hyphens for presentation names (e.g., `my-presentation`)
5. **Organize slides** - Use horizontal slides (`---`) for main topics and vertical slides (`--`) for details
6. **Add speaker notes** - Use `Note:` prefix in Markdown for presenter guidance
7. **Write in Markdown** - It's easier to maintain and version control than HTML

## Troubleshooting

### Presentation not showing?
- Ensure you've run `task install` to install dependencies
- Check that your presentation directory has both `index.html` and `slides.md` files
- Verify the reveal.js paths in your HTML are correct (`../../node_modules/reveal.js/...`)
- Make sure the markdown file path in index.html matches your filename

### Styles not loading?
- Make sure `node_modules` exists (run `task install`)
- Check the console for 404 errors
- Verify the CSS link paths are correct

### Task command not found?
- Install Task following the instructions in Prerequisites
- Alternatively, run npm scripts directly: `npm run serve`

## Getting Help

- **Reveal.js Documentation:** https://revealjs.com/
- **Task Documentation:** https://taskfile.dev/
- **Issues:** Open an issue in this repository

## License

This project is open source and available under the MIT License.
