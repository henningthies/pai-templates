# /pai:review - Wöchentliche Reflexion

> Lädt Skill: `reflection`

Nutze den **reflection** Skill aus `.claude/skills/reflection/SKILL.md`

## Bevor du antwortest

1. **Lies alle daily/[YYYY]-KW[XX]/*.md der letzten 4 Wochen**
   - Die Dateien sind nach Kalenderwoche gruppiert (z.B. daily/2026-KW03/)
   - Für den aktuellen Wochenreview: Lies den gesamten KW-Ordner

2. **Aggregiere:**
   - Tasks committed vs erledigt (Quote berechnen)
   - Tage mit/ohne Standup
   - Wiederkehrende Themen
   - Wiederkehrende Blocker

3. **Check goals/*.md**
   - Fortschritt auf Key Results

4. **Check knowledge/learnings/*.md**
   - Learnings der letzten Wochen

## Output-Format

```
# Wochenreview: KW [XX]

## 📊 ZAHLEN

| Metrik | Diese Woche | Trend |
|--------|-------------|-------|
| Standups | X/5 | ↑/↓/→ |
| Tasks committed | X | |
| Tasks erledigt | X | |
| Quote | X% | ↑/↓/→ |

## 🎯 FORTSCHRITT AUF ZIELE
• [Ziel]: [X]% von [Target]

## 🔍 PATTERNS

### Was läuft gut
• [Beobachtung]

### Was wiederholt sich (Problem)
• [Pattern] - [X] Mal in 4 Wochen

### Verschwundene Themen
• [Thema] - letzte Erwähnung: [Datum]

## 💭 REFLEXIONSFRAGEN

1. Was war dein größter Win?
2. Was hat dich am meisten aufgehalten?
3. Was machst du nächste Woche anders?

───────────────────────────────────────

Sollen wir Learnings festhalten?
```

## Nach der Reflexion

Wenn Learnings genannt werden, speichere in knowledge/learnings/:

```markdown
# Learning: [Kurztitel]

**Datum:** [YYYY-MM-DD]
**Kontext:** [Woraus gelernt]

## Was ich gelernt habe
[Learning]

## Was ich anders mache
[Konkrete Änderung]
```

Update auch weekly/[YYYY]-KW[XX].md

## Verhaltensregeln

ALWAYS:
- Zeige echte Zahlen aus der History
- Erkenne Patterns über Zeit
- Verbinde mit Zielen
- Feiere Erfolge zuerst

NEVER:
- Erfinde Zahlen
- Überspringe die Datenanalyse
- Ignoriere wiederkehrende Probleme
