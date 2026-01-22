# Personal AI - Dein AI-Mitarbeiter

> Das System das mit dir wächst.

## Quick Start

Wähle deine CLI:

**Claude Code:**
```bash
cd ~/pai
claude
/pai:setup
```

**OpenCode:**
```bash
cd ~/pai
opencode
/pai-setup
```

**Gemini CLI:**
```bash
cd ~/pai
gemini
# Dann frag: "Hilf mir GEMINI.md auszufüllen"
```

## Was ist Personal AI?

Personal AI macht deine AI-CLI zu einem persönlichen Mitarbeiter:

- **Er kennt dich** - Deine Ziele, Projekte, Arbeitsweise
- **Er erinnert sich** - Was du letzte Woche committed hast
- **Er erkennt Patterns** - "Das ist Tag 4 für diesen Task"
- **Er hält dich accountable** - Ohne Ausreden durchzulassen
- **Er wächst mit dir** - Je mehr Kontext, desto besser

## Drei Plattformen, ein System

Dieses Template funktioniert mit allen drei AI-CLIs:

| | Claude Code | OpenCode | Gemini CLI |
|---|---|---|---|
| **Kosten** | $20/Monat | Pay-per-use | Gratis-Stufe |
| **Kontext-File** | CLAUDE.md | AGENTS.md | GEMINI.md |
| **Config-Dir** | .claude/ | .opencode/ | .gemini/ |
| **Commands** | `/pai:*` | `/pai-*` | Natürliche Sprache |
| **Tips** | 21 (3 Wochen) | 7 | 7 |

Jede CLI liest automatisch ihre eigene Konfiguration. Du kannst jederzeit wechseln.

## Die Philosophie: Wächst mit dir

Personal AI ist kein statisches Template. Es ist ein **lebendes System** das mit dir wächst:

```
Woche 1:  AI kennt deinen Namen und deine Ziele
Woche 4:  AI kennt deine Patterns und Schwächen
Monat 3:  AI ist wie ein Mitarbeiter der seit 3 Monaten dabei ist
Jahr 1:   AI hat deine komplette Business-History
```

### Je mehr Kontext, desto besser

Personal AI wird besser durch:
- **Regelmäßige Standups** - History baut sich auf
- **Entscheidungen loggen** - AI erinnert dich daran
- **Recherchen speichern** - AI baut auf vorherigem Wissen auf
- **Learnings festhalten** - AI erkennt Patterns über Zeit

## Commands

| Aktion | Claude Code | OpenCode | Gemini CLI |
|--------|-------------|----------|------------|
| Setup | `/pai:setup` | `/pai-setup` | "Hilf mir GEMINI.md auszufüllen" |
| Morgens | `/pai:standup` | `/pai-standup` | "Lass uns ein Standup machen" |
| Abends | `/pai:done` | `/pai-done` | "Feierabend-Wrap-up" |
| Erfassen | `/pai:capture` | `/pai-capture` | "Erfasse diese Idee" |
| Inbox | `/pai:process` | `/pai-process` | "Lass uns die Inbox durchgehen" |
| Coach | `/pai:coach` | `/pai-coach` | "Coache mich bei [Thema]" |
| Recherche | `/pai:research` | `/pai-research` | "Recherchiere [Thema]" |
| Review | `/pai:review` | `/pai-review` | "Wöchentliches Review" |
| Schreiben | `/pai:write` | `/pai-write` | "Schreibe [Inhalt]" |
| Bearbeiten | `/pai:edit` | `/pai-edit` | "Verbessere diesen Text" |

## Struktur

```
pai/
├── CLAUDE.md              # Claude Code Kontext
├── GEMINI.md              # Gemini CLI Kontext
├── AGENTS.md              # OpenCode Kontext
├── daily/                 # Tägliche Standups (nach KW gruppiert)
│   └── [YYYY]-KW[XX]/     # z.B. 2026-KW03/
├── weekly/                # Wöchentliche Reviews
├── goals/                 # Deine Ziele
├── inbox/                 # Schnelle Ideen
├── knowledge/             # Dein akkumuliertes Wissen
│   ├── research/          # Recherche-Ergebnisse
│   ├── learnings/         # Was du gelernt hast
│   └── decisions/         # Entscheidungs-Log
├── projects/              # Deine Projekte
├── templates/             # Inhalts-Templates
├── tips/                  # 7 Starter-Tips (Gemini/OpenCode)
├── .claude/               # Claude Code Config
│   ├── commands/pai/      # Commands
│   ├── skills/            # Wiederverwendbare Skills
│   ├── tips/              # 21-Tage Tutorial
│   └── hooks/             # Session Hooks
├── .gemini/               # Gemini CLI Config
│   └── skills/            # Skills
├── .opencode/             # OpenCode Config
│   ├── agents/            # Agents
│   └── command/           # Commands
└── .obsidian/             # Obsidian Vault Config
```

## Der Eye-Opener

**Ohne Personal AI (ChatGPT, etc.):**
```
Du: "Was steht heute an?"
AI: "Das kann ich nicht wissen, erzähl mir mehr..."
```

**Mit Personal AI:**
```
Du: /pai:standup
AI: "Guten Morgen! Die Landing Page ist jetzt Tag 4.
     Pattern erkannt: Deployments 4x verschoben.
     Was blockiert dich da wirklich?"
```

**Das ist der Unterschied zwischen einem Tool und einem Mitarbeiter.**

## Skills / Agents

Personal AI nutzt wiederverwendbare Verhaltensweisen:

| Name | Beschreibung | Zweck |
|------|--------------|-------|
| `accountability` | Hält dich auf Kurs, erkennt Patterns | standup, done |
| `coach` | 3-Perspektiven, Decision-Check | coaching |
| `research` | Wissens-Akkumulation | recherche |
| `reflection` | Learnings extrahieren | review |
| `writing` | Text-Varianten | schreiben |
| `editing` | Konkretes Feedback | bearbeiten |

## Dein Editor, deine Wahl

Personal AI sind **Markdown-Dateien**. Du kannst sie in jedem Editor öffnen:

- **Obsidian** - Vorkonfiguriert (siehe unten)
- **VS Code** - Öffne den Ordner direkt
- **iA Writer** - Für minimalistisches Schreiben
- **Oder jeder andere Markdown-Editor**

Die AI arbeitet parallel im Terminal - egal welchen Editor du nutzt.

### So nutzt du es mit Obsidian

1. Öffne Obsidian
2. "Open folder as vault" -> wähle deinen `pai/` Ordner
3. Fertig! Die Konfiguration ist bereits vorbereitet.

### Keyboard Shortcuts (vorkonfiguriert)

- `Alt + D` -> Neue Daily Note
- `Alt + T` -> Template einfügen

## Erweiterung

Personal AI ist erweiterbar. Du kannst eigene Skills und Commands hinzufügen.

> Siehe [EXTENDING.md](EXTENDING.md) für Details.

## Nächste Schritte

1. Führe Setup für deine gewählte CLI aus
2. Mach deinen ersten Standup
3. Nutze es täglich - dein AI wird besser
4. Erweitere es nach Bedarf

---

> **Personal AI - Dein AI-Mitarbeiter**
> Das System das mit dir wächst.

---

## Lizenz

MIT License - siehe [LICENSE](../LICENSE) für Details.

**Kontakt:** personal-ai@ai-on-rails.com
