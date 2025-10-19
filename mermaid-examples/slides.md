# Mermaid Examples

Examples of different Mermaid diagram types you can use in your presentations.

---

## Flowcharts

```mermaid
graph TD
    A[Start] --> B{Is it working?}
    B -->|Yes| C[Great!]
    B -->|No| D[Debug]
    D --> E[Fix Issue]
    E --> B
    C --> F[End]
```

---

## Sequence Diagrams

```mermaid
sequenceDiagram
    participant User
    participant App
    participant Database
    
    User->>App: Login Request
    App->>Database: Query User
    Database-->>App: User Data
    App-->>User: Login Success
```

---

## Class Diagrams

```mermaid
classDiagram
    class User {
        +String name
        +String email
        +login()
        +logout()
    }
    
    class Admin {
        +manage()
    }
    
    User <|-- Admin
```

---

## State Diagrams

```mermaid
stateDiagram-v2
    [*] --> Idle
    Idle --> Processing : start
    Processing --> Success : complete
    Processing --> Error : fail
    Success --> [*]
    Error --> Idle : retry
```

---

## Gantt Charts

```mermaid
gantt
    title Project Timeline
    dateFormat  YYYY-MM-DD
    section Development
    Planning     :done, plan, 2024-01-01, 2024-01-07
    Coding       :active, code, 2024-01-08, 2024-02-15
    Testing      :test, after code, 10d
    section Deployment
    Staging      :stage, after test, 5d
    Production   :prod, after stage, 3d
```

---

## Git Graphs

```mermaid
gitgraph
    commit id: "Initial"
    branch develop
    checkout develop
    commit id: "Feature A"
    commit id: "Feature B"
    checkout main
    merge develop
    commit id: "Release v1.0"
```

---

## Entity Relationship Diagrams

```mermaid
erDiagram
    USER {
        int id PK
        string name
        string email
    }
    
    ORDER {
        int id PK
        int user_id FK
        date created_at
    }
    
    USER ||--o{ ORDER : places
```

---

## Thank You

Use these diagrams to make your presentations more visual and engaging!
