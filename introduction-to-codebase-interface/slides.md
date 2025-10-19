# Codebase Interface

A presentation from [Codebase Interface](https://codebaseinterface.org)

---

## What is Codebase Interface?

```mermaid
graph TD
    %% Central Codebase
    CODEBASE[🏗️ Codebase<br/>Product]
    
    %% Interface Files
    README["📖 README.md<br/><small>User Interface</small>"]
    CONTRIBUTING["👥 CONTRIBUTING.md<br/><small>Contributor Interface</small>"]
    RUNBOOK["🔧 RUNBOOK.md<br/><small>Operations Interface</small>"]
    AGENTS["🤖 AGENTS.md<br/><small>AI Interface</small>"]
    BUILD["⚙️ Taskfile<br/><small>Build Interface</small>"]
    
    %% Audience Groups
    USERS["👤 Service Users<br/><small>End Users</small>"]
    CONTRIBUTORS["🧑‍💻 Contributors<br/><small>Developers</small>"]
    OPERATORS["🛠️ Operators<br/><small>DevOps/SRE</small>"]
    AI_AGENTS["🤖 AI Agents<br/><small>Copilot/ChatGPT</small>"]
    BUILD_AGENTS["🚀 Build Agents<br/><small>CI/CD Systems</small>"]
    
    %% Connections: Interfaces to Codebase
    README -.-> CODEBASE
    CONTRIBUTING -.-> CODEBASE
    RUNBOOK -.-> CODEBASE
    AGENTS -.-> CODEBASE
    BUILD -.-> CODEBASE
    
    %% Connections: Audiences to Interfaces
    USERS ==> README
    CONTRIBUTORS ==> CONTRIBUTING
    OPERATORS ==> RUNBOOK
    AI_AGENTS ==> AGENTS
    BUILD_AGENTS ==> BUILD
    
    %% Styling
    classDef codebase fill:#4b9ce2,stroke:#333,stroke-width:3px,color:#fff
    classDef interface fill:#e3f2fd,stroke:#1976d2,stroke-width:2px,color:#1565c0
    classDef audience fill:#f3e5f5,stroke:#7b1fa2,stroke-width:2px,color:#4a148c
    
    class CODEBASE codebase
    class README,CONTRIBUTING,RUNBOOK,AGENTS,BUILD interface
    class USERS,CONTRIBUTORS,OPERATORS,AI_AGENTS,BUILD_AGENTS audience
```

---

## Vertical Slides

Press down arrow for more

--

## Nested Slide 1

You can create vertical slide stacks

Use `--` to separate slides vertically.

--

## Nested Slide 2

Navigate with arrow keys

---

## Code Examples

```javascript
function hello() {
    console.log("Hello, World!");
}
```

Code blocks are automatically syntax highlighted!

---

## Lists and Formatting

- **Bold text** with `**text**`
- *Italic text* with `*text*`
- `Inline code` with backticks
- [Links](https://codebaseinterface.org)

---

## Fragment Animations

- Item 1 <!-- .element: class="fragment" -->
- Item 2 <!-- .element: class="fragment" -->
- Item 3 <!-- .element: class="fragment" -->

Note:
These are speaker notes. They won't appear on the slides.
Press 'S' during the presentation to view them.

---

## Thank You!

Visit [codebaseinterface.org](https://codebaseinterface.org)
