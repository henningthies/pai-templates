# Personal AI erweitern

> So fügst du eigene Skills, Commands und Anpassungen hinzu.

## Überblick

Personal AI ist modular aufgebaut:

```
.claude/
├── commands/pai/     # Commands (Trigger)
└── skills/           # Skills (Verhalten)
```

- **Commands** = Was der User tippt (`/pai:standup`)
- **Skills** = Wie Personal AI sich verhält (Regeln, Kontext, Output-Format)

## Eigenen Skill erstellen

### 1. Ordner anlegen

```bash
mkdir -p .claude/skills/mein-skill
```

### 2. SKILL.md schreiben

```markdown
# Skill: Mein Skill

> Kurze Beschreibung was der Skill tut.

## Rolle

Du bist [Rolle]. Deine Aufgabe ist [Aufgabe].

## Memory-Zugriff

BEVOR du antwortest:
1. Lies [relevante Dateien]
2. Check [relevanten Kontext]

## Verhaltensregeln

### ALWAYS
- [Regel 1]
- [Regel 2]

### NEVER
- [Anti-Regel 1]
- [Anti-Regel 2]

## Output-Format

```
[Wie der Output aussehen soll]
```
```

### Beispiel: Brainstorming Skill

```markdown
# Skill: Brainstorming

> Generiert viele Ideen ohne zu urteilen.

## Rolle

Du bist ein kreativer Brainstorming-Partner. Quantität vor Qualität.

## Verhaltensregeln

### ALWAYS
- Generiere mindestens 10 Ideen
- Variiere zwischen offensichtlich und wild
- Baue auf Ideen auf ("Und wenn wir das kombinieren mit...")
- Halte Energie hoch

### NEVER
- Bewerte oder kritisiere Ideen
- Sage "Das geht nicht"
- Stoppe nach wenigen Ideen

## Output-Format

```
💡 BRAINSTORM: [Thema]

1. [Idee]
2. [Idee]
...
10. [Idee]

🔥 WILDE IDEEN
11. [Verrückte Idee]
12. [Noch verrückter]

Welche willst du vertiefen?
```
```

## Eigenen Command erstellen

### 1. Command-Datei anlegen

```bash
touch .claude/commands/pai/brainstorm.md
```

### 2. Command schreiben

```markdown
# /pai:brainstorm - Ideen generieren

> Lädt Skill: `brainstorming`

Nutze den **brainstorming** Skill aus `.claude/skills/brainstorming/SKILL.md`

## Kontext

Der User will Ideen zu einem Thema generieren.

## Ablauf

1. Frage nach dem Thema (falls nicht angegeben)
2. Generiere 10+ Ideen
3. Füge 2-3 wilde Ideen hinzu
4. Frage welche vertiefen
```

### 3. Testen

```bash
claude
> /pai:brainstorm
```

## CLAUDE.md anpassen

Die `CLAUDE.md` ist das Herzstück. Hier definierst du dich selbst:

### Wichtige Abschnitte

```markdown
## Über mich
[Wer du bist - Name, Rolle, Kontext]

## Aktuelle Situation
[Projekte, Ziele, Challenges]

## Kommunikation
[ALWAYS/NEVER Regeln für AI]

## Arbeitsweise
[Rhythmus, Präferenzen, Schwächen]
```

### ALWAYS/NEVER Regeln

Nutze klare Imperativ-Sprache:

```markdown
**ALWAYS:**
- Beziehe dich auf meine History (daily/, knowledge/)
- Challenge meine Annahmen
- Frage nach dem "Warum" bevor du Lösungen gibst

**NEVER:**
- Gib generische Produktivitäts-Tipps
- Sei ein Ja-Sager
- Ignoriere meine früheren Entscheidungen
```

### Best Practices

- **50-200 Zeilen** - Nicht zu lang, nicht zu kurz
- **Scannbar** - Bullet Points, klare Abschnitte
- **Spezifisch** - Keine vagen Aussagen
- **Aktuell halten** - Quartalsweise reviewen

## Neuen Wissensbereich hinzufügen

Du kannst `knowledge/` erweitern:

```
knowledge/
├── research/       # Recherchen
├── learnings/      # Learnings
├── decisions/      # Entscheidungen
├── competitors/    # NEU: Wettbewerber-Infos
├── customers/      # NEU: Kunden-Insights
└── frameworks/     # NEU: Frameworks die du nutzt
```

### Skill für neuen Bereich

Wenn du einen neuen Bereich nutzt, erstelle einen Skill der darauf zugreift:

```markdown
# Skill: Competitor Analysis

## Memory-Zugriff

BEVOR du antwortest:
1. Lies `knowledge/competitors/*.md`
2. Suche nach relevantem Wettbewerber
```

## Projekt-Struktur erweitern

Du kannst `projects/` mit mehr Struktur versehen:

```
projects/
├── aktiv/
│   ├── projekt-a.md
│   └── projekt-b.md
├── geparkt/
│   └── alte-idee.md
└── abgeschlossen/
    └── fertiges-projekt.md
```

## Eigene Routinen

Erstelle Commands für wiederkehrende Workflows:

### Beispiel: Monatliche Review

```markdown
# /pai:monthly - Monatliche Review

> Erweitert: `reflection` Skill

## Ablauf

1. Lies alle `weekly/*.md` des Monats
2. Lies alle `daily/*.md` des Monats
3. Aggregiere auf Monats-Ebene
4. Check Quartals-Ziele
5. Speichere in `monthly/[YYYY-MM].md`
```

## Tips für eigene Erweiterungen

### 1. Klein anfangen

Starte mit einem Skill, teste ihn, iteriere.

### 2. Skill vor Command

Definiere erst das Verhalten (Skill), dann den Trigger (Command).

### 3. Memory nutzen

Der Eye-Opener ist die Memory. Lass Skills auf History zugreifen:

```markdown
## Memory-Zugriff
BEVOR du antwortest, lies [relevante Dateien]
```

### 4. ALWAYS/NEVER klar definieren

Vage Regeln = vages Verhalten. Sei spezifisch.

### 5. Output-Format festlegen

Definiere wie der Output aussehen soll. Konsistenz hilft.

## Beispiele zur Inspiration

### Networking Skill

```markdown
# Skill: Networking

## Rolle
Du hilfst mir Kontakte zu pflegen und Follow-ups zu machen.

## Memory-Zugriff
Lies `knowledge/contacts/*.md`

## Verhaltensregeln
ALWAYS:
- Erinnere an Follow-ups die überfällig sind
- Schlage Anknüpfungspunkte vor

NEVER:
- Generiere Spam-Templates
- Vergiss den Kontext der Beziehung
```

### Content-Planung Skill

```markdown
# Skill: Content Planning

## Rolle
Du hilfst mir Content zu planen und zu tracken.

## Memory-Zugriff
Lies `knowledge/content-calendar.md`
Lies `knowledge/content-ideas.md`

## Verhaltensregeln
ALWAYS:
- Zeige was diese Woche geplant ist
- Schlage Themen vor basierend auf Trends

NEVER:
- Überlade mit zu vielen Ideen
- Ignoriere was schon geplant ist
```

---

## Zusammenfassung

| Was | Wo | Format |
|-----|-----|--------|
| Neuer Skill | `.claude/skills/[name]/SKILL.md` | Rolle, Memory, ALWAYS/NEVER |
| Neuer Command | `.claude/commands/pai/[name].md` | Skill-Referenz, Ablauf |
| Kontext erweitern | `CLAUDE.md` | Über mich, ALWAYS/NEVER |
| Wissensbereich | `knowledge/[bereich]/` | Markdown Files |

> "Personal AI wächst mit dir. Und du kannst es wachsen lassen wie du willst."
