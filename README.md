# Presentations

Reveal.js-based presentations for the Codebase Interface organization.

🌐 **Live Site:** [codebaseinterface.org/presentations](https://codebaseinterface.org/presentations)

## Quick Start

### Prerequisites
- [Node.js](https://nodejs.org/) (v14+)
- [Task](https://taskfile.dev/) - Install with: `npm install -g @go-task/cli`

### Setup
```bash
# Install dependencies
task install

# Create a new presentation
task new -- my-presentation-name

# Start local server
task serve
```

Your presentation will be available at: `http://localhost:8000/presentations/my-presentation-name/`

## Commands

| Command | Description |
|---------|-------------|
| `task install` | Install dependencies |
| `task new -- <name>` | Create a new presentation |
| `task serve` | Start local development server |
| `task list` | List all presentations |
| `task update-index` | Generate presentations array for index.html |
| `task help` | Show all available commands |

## Creating Presentations

Presentations are written in **Markdown** for easy editing!

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed instructions on:
- Creating and editing presentations in Markdown
- Using reveal.js features
- Adding presentations to the index
- Deployment

**Quick example:**
```markdown
# My Slide Title

Content goes here

---

# Next Slide

More content
```

## Structure

```
presentations/
├── index.html              # Main listing page
├── presentations/          # Individual presentation directories
│   └── example/           
│       ├── index.html     # HTML wrapper
│       └── slides.md      # Presentation slides (Markdown)
├── templates/             # Templates for new presentations
│   └── presentation/
│       ├── index.html     # HTML wrapper template
│       └── slides.md      # Markdown slides template
├── Taskfile.yml           # Task automation
└── package.json           # Dependencies
```

## Features

- 📊 **Multiple Presentations** - Create unlimited slide decks
- ✍️ **Markdown-Based** - Write slides in Markdown, not HTML
- 🎨 **Beautiful Themes** - 13 built-in reveal.js themes
- 💻 **Code Highlighting** - Syntax highlighting for code examples
- 📱 **Responsive** - Works on desktop, tablet, and mobile
- 🚀 **Easy Deployment** - Automatic deployment to GitHub Pages
- 🛠️ **Task Automation** - Simple commands via Taskfile

## Documentation

- [Contributing Guide](CONTRIBUTING.md) - How to create presentations
- [Reveal.js Docs](https://revealjs.com/) - Learn about reveal.js features

## License

MIT
