# Tip 16: Eigene Skills erstellen

**Kategorie:** Power-User

## Commands vs Skills

- **Command** = Was der User tippt (standup, coach, etc.)
- **Skill/Agent** = Wie Personal AI sich verhält (Regeln, Kontext, Format)

Ein Command kann einen Skill laden. Mehrere Commands können denselben Skill nutzen.

## So erstellst du einen Skill

| CLI | Skill-Ort | Datei |
|-----|-----------|-------|
| Claude Code | `.claude/skills/[name]/` | `SKILL.md` |
| OpenCode | `.opencode/agents/[name]/` | `AGENT.md` |
| Gemini CLI | `.gemini/skills/[name]/` | `SKILL.md` |

## Skill-Struktur

```markdown
# Skill: [Name]

## Rolle
[Was ist die Rolle dieses Skills?]

## Memory-Zugriff
[Welche Dateien soll Personal AI lesen?]

## ALWAYS
- [Regel 1]
- [Regel 2]

## NEVER
- [Regel 1]
- [Regel 2]

## Output-Format
[Wie soll die Antwort aussehen?]
```

## Beispiel-Skills

- **Buchhaltung:** Kennt deine Konten, Kategorien, Steuerregeln
- **Kunden-Kommunikation:** Kennt deinen Ton, deine Templates
- **Projekt-Management:** Kennt deine Methodik, deine Tools

---

Probier es:

Schau dir die bestehenden Skills im Config-Ordner deiner CLI an. Welchen Bereich könntest du ergänzen?
