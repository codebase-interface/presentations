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
presentations/my-presentation/slides.md    ← Edit your slides here (Markdown)
presentations/my-presentation/index.html   ← HTML wrapper (rarely needs editing)
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

## 📝 Basic Markdown Slide Structure
```markdown
# First Slide

Content for the first slide

---

# Second Slide

Content for the second slide

---

## Vertical Slides

Main topic

--

### Subtopic 1

Use -- for vertical slides

--

### Subtopic 2

Navigate with up/down arrows

---

## Code with Highlighting

```javascript
function hello() {
    console.log("Hello!");
}
` ``

---

## Step-by-Step Reveal

- First item <!-- .element: class="fragment" -->
- Second item <!-- .element: class="fragment" -->
- Third item <!-- .element: class="fragment" -->

---

## Speaker Notes

Slide content here

Note:
These are speaker notes, press S to view them
```

## 🌐 URL Structure
After deployment:
```
https://codebaseinterface.org/presentations/my-presentation/
```

## 🔄 Workflow
1. **Create:** `task new -- presentation-name`
2. **Edit:** `presentations/presentation-name/slides.md` (Markdown format)
3. **Test:** `task serve` → http://localhost:8000
4. **List:** `task update-index` → copy to index.html
5. **Deploy:** Push to main branch (auto-deploys via GitHub Actions)

## 💡 Pro Tips
- Write slides in Markdown for easy editing
- Use `---` for horizontal slides, `--` for vertical slides
- Add `<!-- .element: class="fragment" -->` for step-by-step reveals
- Press `S` during presentation for speaker notes
- Add speaker notes with `Note:` prefix
- Test in fullscreen mode (`F` key) before presenting

## 🆘 Need Help?
- Full guide: See `CONTRIBUTING.md`
- Reveal.js docs: https://revealjs.com/
- Issues: GitHub repository issues

## ✅ Checklist for New Presentation
- [ ] Run `task new -- presentation-name`
- [ ] Edit slides in `presentations/presentation-name/slides.md` (Markdown)
- [ ] Test locally with `task serve`
- [ ] Add entry to `index.html` presentations array
- [ ] Commit and push to trigger deployment
- [ ] Verify live at codebaseinterface.org/presentations/presentation-name/
