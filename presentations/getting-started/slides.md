# Getting Started

### Creating Presentations with Reveal.js

Codebase Interface

---

## Welcome! 👋

This is an example presentation demonstrating the capabilities of our presentation system.

Press the right arrow to continue → <!-- .element: class="fragment" -->

---

## What You'll Learn

- How to create presentations <!-- .element: class="fragment" -->
- Basic markdown slide features <!-- .element: class="fragment" -->
- Code highlighting <!-- .element: class="fragment" -->
- Navigation and controls <!-- .element: class="fragment" -->

---

## Creating a Presentation

Use the Task command to create a new presentation:

```bash
task new -- my-presentation-name
```

--

## What Gets Created

- New directory under `presentations/`
- Pre-configured `index.html`
- Markdown file `slides.md` for your content
- Ready-to-use reveal.js setup

--

## Start Developing

Preview your presentation locally:

```bash
task serve
```

Then visit: `localhost:8000/presentations/my-presentation-name/`

---

## Markdown Slide Features

Writing slides in Markdown is **easy**!

- Use `---` to separate horizontal slides
- Use `--` for vertical slides
- Format text with *italic*, **bold**, or `code`
- Add [links](https://revealjs.com) easily

---

## Step-by-Step Reveals

First, this appears <!-- .element: class="fragment fade-in" -->

Then this <!-- .element: class="fragment fade-in" -->

Finally this! <!-- .element: class="fragment fade-in" -->

You can use different animations <!-- .element: class="fragment" style="color: #42affa;" -->

---

## Code Highlighting

Syntax-highlighted code blocks:

```javascript
function createPresentation(name) {
    return `presentations/${name}`;
}

const myPresentation = createPresentation('demo');
console.log(myPresentation);
// Output: presentations/demo
```

---

## Navigation

| Key | Action |
|-----|--------|
| **Arrow Keys** | Navigate between slides |
| **F** | Fullscreen mode |
| **S** | Speaker notes view |
| **ESC** | Slide overview |

Note:
These are speaker notes! Press 'S' to see them.

---

## Deployment

Push to main branch and GitHub Pages will automatically deploy

Your presentation will be live at:

`codebaseinterface.org/presentations/your-name/`

---

## Resources

- [Reveal.js Documentation](https://revealjs.com/)
- [View All Presentations](../)
- [GitHub Repository](https://github.com/codebase-interface/presentations)

---

# Start Creating! 🚀

Run `task new -- your-presentation` to get started

<small>Visit [codebaseinterface.org](https://codebaseinterface.org)</small>
