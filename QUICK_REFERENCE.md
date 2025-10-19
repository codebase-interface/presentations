# Quick Reference Card

## 🚀 Quick Start (3 Steps)
```bash
1. task install                    # Install dependencies
2. task new -- my-presentation     # Create presentation
3. task serve                      # Preview at localhost:8000
```

## 📋 All Commands
| Command | What It Does |
|---------|-------------|
| `task install` | Install Node.js dependencies |
| `task new -- <name>` | Create new presentation from template |
| `task serve` | Start local dev server (port 8000) |
| `task list` | List all presentations |
| `task update-index` | Generate presentations array |
| `task clean` | Clean generated files |

## 📂 File Locations
```
presentations/my-presentation/index.html  ← Edit your slides here
index.html                                 ← Add to presentations array
CONTRIBUTING.md                            ← Full documentation
```

## ⌨️ Presentation Navigation
| Key | Action |
|-----|--------|
| `→` / `←` | Next/Previous slide |
| `↑` / `↓` | Up/Down (vertical slides) |
| `F` | Fullscreen |
| `S` | Speaker notes view |
| `ESC` | Slide overview |

## 🎨 Change Theme
Edit your presentation's HTML:
```html
<!-- Change from black.css to any theme: -->
<link rel="stylesheet" href="../../node_modules/reveal.js/dist/theme/white.css">
```

Available: black, white, league, beige, sky, night, serif, simple, solarized, moon, dracula, blood

## 📝 Basic Slide Structure
```html
<!-- Simple slide -->
<section>
    <h2>Title</h2>
    <p>Content</p>
</section>

<!-- Vertical slides -->
<section>
    <section><h2>Main Topic</h2></section>
    <section><h2>Detail 1</h2></section>
    <section><h2>Detail 2</h2></section>
</section>

<!-- Code with highlighting -->
<section>
    <pre><code data-trim>
function hello() {
    console.log("Hello!");
}
    </code></pre>
</section>

<!-- Step-by-step reveal -->
<section>
    <p class="fragment">First</p>
    <p class="fragment">Second</p>
    <p class="fragment">Third</p>
</section>
```

## 🌐 URL Structure
After deployment:
```
https://codebaseinterface.org/presentations/my-presentation/
```

## 🔄 Workflow
1. **Create:** `task new -- presentation-name`
2. **Edit:** `presentations/presentation-name/index.html`
3. **Test:** `task serve` → http://localhost:8000
4. **List:** `task update-index` → copy to index.html
5. **Deploy:** Push to main branch (auto-deploys via GitHub Actions)

## 💡 Pro Tips
- Use `class="fragment"` for step-by-step reveals
- Press `S` during presentation for speaker notes
- Use vertical slides (nested sections) for related content
- Test in fullscreen mode (`F` key) before presenting
- Add speaker notes inside `<aside class="notes">` tags

## 🆘 Need Help?
- Full guide: See `CONTRIBUTING.md`
- Reveal.js docs: https://revealjs.com/
- Issues: GitHub repository issues

## ✅ Checklist for New Presentation
- [ ] Run `task new -- presentation-name`
- [ ] Edit slides in `presentations/presentation-name/index.html`
- [ ] Test locally with `task serve`
- [ ] Add entry to `index.html` presentations array
- [ ] Commit and push to trigger deployment
- [ ] Verify live at codebaseinterface.org/presentations/presentation-name/
