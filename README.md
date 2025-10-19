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
| `task help` | Show all available commands |

## Creating Presentations

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed instructions on:
- Creating and editing presentations
- Using reveal.js features
- Adding presentations to the index
- Deployment

## Structure

```
presentations/
├── index.html              # Main listing page
├── presentations/          # Individual presentation directories
│   └── example/           
│       └── index.html     # Presentation slides
├── templates/             # Templates for new presentations
│   └── presentation/
│       └── index.html
├── Taskfile.yml           # Task automation
└── package.json           # Dependencies
```

## Features

- 📊 **Multiple Presentations** - Create unlimited slide decks
- 🎨 **Beautiful Themes** - Powered by reveal.js
- 💻 **Code Highlighting** - Syntax highlighting for code examples
- 📱 **Responsive** - Works on desktop, tablet, and mobile
- 🚀 **Easy Deployment** - Automatic deployment to GitHub Pages
- 🛠️ **Task Automation** - Simple commands via Taskfile

## Documentation

- [Contributing Guide](CONTRIBUTING.md) - How to create presentations
- [Reveal.js Docs](https://revealjs.com/) - Learn about reveal.js features

## License

MIT
