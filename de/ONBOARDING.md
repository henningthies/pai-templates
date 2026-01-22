# Personal AI Onboarding

> 10 Minuten Setup für deinen AI-Mitarbeiter.

## Bevor du startest

**Du brauchst:**
- [ ] Eine AI-CLI installiert (Claude Code, OpenCode, oder Gemini CLI)
- [ ] API Key konfiguriert (falls von deiner CLI benötigt)
- [ ] 10 Minuten Zeit

---

## Schritt 1: CLI starten (1 Min)

Navigiere zu deinem Personal AI Ordner und starte deine CLI:

**Claude Code:**
```bash
cd ~/pai
claude
```

**OpenCode:**
```bash
cd ~/pai
opencode
```

**Gemini CLI:**
```bash
cd ~/pai
gemini
```

---

## Schritt 2: Kontext personalisieren (5 Min)

Jede CLI liest ihre eigene Kontext-Datei. Starte das Setup:

**Claude Code:**
```
/pai:setup
```

**OpenCode:**
```
/pai-setup
```

**Gemini CLI:**
```
Hilf mir GEMINI.md auszufüllen. Stell mir die Fragen
und aktualisiere die Datei basierend auf meinen Antworten.
```

Die AI wird dich fragen:
1. Wie heißt du?
2. Was machst du beruflich?
3. Was ist dein wichtigstes Ziel gerade?
4. Was ist deine größte Herausforderung?
5. Wie soll ich mit dir kommunizieren?

**Ergebnis:** Eine personalisierte Kontext-Datei, die die AI bei jeder Interaktion liest.

### Optional: Profil-Recherche (1-2 Min)

Für bessere Personalisierung, gib der AI deine LinkedIn oder Website URL:

```
> https://linkedin.com/in/deinprofil
```

Die AI extrahiert automatisch deine Rolle, Branche und Skills.

---

## Schritt 3: Erstes Ziel definieren (2 Min)

Sag deiner AI:

```
Hilf mir mein wichtigstes Ziel für die nächsten 4 Wochen
in goals/current.md zu definieren.
```

Die AI führt dich durch:
- Was ist das Ziel?
- Warum ist es wichtig?
- Woran erkennst du, dass es erreicht ist?
- Was ist die Deadline?

---

## Schritt 4: Erstes Standup (2 Min)

Jetzt teste es:

**Claude Code:** `/pai:standup`
**OpenCode:** `/pai-standup`
**Gemini CLI:** "Lass uns ein Morgen-Standup machen"

Die AI wird:
- Deine History der letzten Tage prüfen
- Fragen was du heute vorhast
- Es in `daily/[DATUM].md` speichern
- Sich morgen daran erinnern

---

## Setup abgeschlossen!

Du hast jetzt:
- Deine Kontext-Datei personalisiert
- Dein erstes Ziel definiert
- Dein erstes Standup gemacht

---

## Was kommt als nächstes?

### Tägliche Routine

```
Morgens:    Standup -> Was steht heute an?
Tagsüber:   Coach, Recherche, Schreiben, Capture...
Abends:     Done -> Feierabend-Wrap-up
Freitags:   Review -> Woche reflektieren
```

### Lerne die Commands

| Aktion | Claude Code | OpenCode | Gemini |
|--------|-------------|----------|--------|
| Morgen-Check-in | `/pai:standup` | `/pai-standup` | "Standup" |
| Feierabend | `/pai:done` | `/pai-done` | "Fertig für heute" |
| Schnell erfassen | `/pai:capture` | `/pai-capture` | "Erfasse X" |
| Inbox verarbeiten | `/pai:process` | `/pai-process` | "Inbox durchgehen" |
| Coaching | `/pai:coach` | `/pai-coach` | "Coache mich" |
| Wöchentliches Review | `/pai:review` | `/pai-review` | "Wöchentliches Review" |
| Recherche | `/pai:research` | `/pai-research` | "Recherchiere X" |
| Text schreiben | `/pai:write` | `/pai-write` | "Schreibe X" |
| Text bearbeiten | `/pai:edit` | `/pai-edit` | "Verbessere das" |

### Arbeite die Tips durch

Im `tips/` Ordner findest du 7 Starter-Tips:
1. Kontext ist alles
2. Daily Notes
3. Ziele definieren
4. 3 Perspektiven
5. Entscheidungen dokumentieren
6. Learnings erfassen
7. Wachstum braucht Zeit

**Empfehlung:** Ein Tip pro Tag.

---

## FAQ

### "Muss ich Dateien manuell schreiben?"

Nein! Sag der AI einfach was du willst:
- "Schreib das in meine Daily Notes"
- "Speichere diese Entscheidung"
- "Erstelle ein Learning daraus"

### "Kann ich zwischen CLIs wechseln?"

Ja! Alle drei CLIs funktionieren mit dem gleichen Ordner. Jede liest ihr eigenes Config-Verzeichnis.

### "Welche CLI sollte ich nutzen?"

- **Claude Code** - Beste Qualität, $20/Monat Abo
- **OpenCode** - Flexibel, Pay-per-use mit jedem LLM
- **Gemini CLI** - Gratis-Stufe verfügbar

Starte mit dem was du hast. Wechsle bei Bedarf.

---

## Nächste Schritte

1. **Heute:** Mach morgen früh dein erstes echtes Standup
2. **Diese Woche:** Arbeite die 7 Tips durch
3. **In 2 Wochen:** Mach dein erstes Weekly Review

**Das System wächst mit dir.** Je mehr du es nutzt, desto besser wird es.
