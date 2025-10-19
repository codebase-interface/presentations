# Contributing to Presentations

This repository hosts reveal.js-based presentations for the Codebase Interface organization, deployed at `codebaseinterface.org/presentations/`.

## Quick Workflow Overview

```
1. Create presentation:        task new -- my-presentation
2. Edit slides:                presentations/my-presentation/index.html
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
- Copy the presentation template
- Set up the basic structure with sample slides
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

3. Edit the `presentations/my-presentation/index.html` file to add your content.

## Editing Your Presentation

1. Open `presentations/your-presentation-name/index.html` in your favorite editor.

2. Each `<section>` tag represents a slide:
   ```html
   <section>
       <h2>My Slide Title</h2>
       <p>Slide content goes here</p>
   </section>
   ```

3. For vertical slides (sub-slides), nest sections:
   ```html
   <section>
       <section>
           <h2>Main Topic</h2>
       </section>
       <section>
           <h2>Sub-topic 1</h2>
       </section>
       <section>
           <h2>Sub-topic 2</h2>
       </section>
   </section>
   ```

4. Add code blocks with syntax highlighting:
   ```html
   <section>
       <h2>Code Example</h2>
       <pre><code data-trim data-noescape>
   function example() {
       return "Hello World";
   }
       </code></pre>
   </section>
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
- **Markdown** - Write slides in Markdown
- **Highlight** - Syntax highlighting for code
- **Notes** - Speaker notes (press `S` during presentation)

### Advanced Features

**Fragments (step-by-step reveals):**
```html
<section>
    <p class="fragment">First point</p>
    <p class="fragment">Second point</p>
    <p class="fragment">Third point</p>
</section>
```

**Backgrounds:**
```html
<section data-background-color="#ff0000">
    <h2>Red background</h2>
</section>

<section data-background-image="image.jpg">
    <h2>Image background</h2>
</section>
```

**Transitions:**
```html
<section data-transition="zoom">
    <h2>This slide zooms in</h2>
</section>
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
5. **Organize slides** - Use sections for main topics and nested sections for details
6. **Add speaker notes** - Use `<aside class="notes">` for presenter guidance

## Troubleshooting

### Presentation not showing?
- Ensure you've run `task install` to install dependencies
- Check that your presentation directory has an `index.html` file
- Verify the reveal.js paths in your HTML are correct (`../../node_modules/reveal.js/...`)

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
