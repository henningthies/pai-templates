# Tip 20: Mehrere Projekte managen

**Kategorie:** Power-User

## Der projects/ Ordner

```
projects/
├── active.md           # Übersicht aktiver Projekte
├── client-a/
│   ├── README.md       # Projekt-Kontext
│   ├── notes.md        # Projekt-Notizen
│   └── decisions.md    # Projekt-Entscheidungen
└── client-b/
    └── ...
```

## Projekt-Kontext

Jedes Projekt kann einen eigenen README haben:

```markdown
# Projekt: Client A Website

## Kontext
- Kunde seit: Januar 2025
- Ansprechpartner: Max
- Tech-Stack: Next.js, Supabase

## Aktuelle Phase
MVP-Development

## Wichtige Entscheidungen
- 2025-01-05: Supabase statt Firebase (Kosten)
```

## Personal AI und Projekte

Wenn du sagst "Ich arbeite an Client A", kann Personal AI:
- Den Projekt-Kontext laden
- Projekt-spezifische Entscheidungen berücksichtigen
- Im richtigen Kontext antworten

## Pro-Tip

Halte `projects/active.md` aktuell. Das ist Personal AIs Übersicht was gerade läuft.

---

🎯 **Probier es:**

Erstelle einen Ordner für dein wichtigstes aktuelles Projekt in `projects/`.
