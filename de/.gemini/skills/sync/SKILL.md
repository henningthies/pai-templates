---
name: pai:sync
description: Backup und Synchronisierung via Git
disable-model-invocation: true
---

# Sync - Backup & Synchronisierung

## Ablauf

1. **Frage nach Methode** (falls nicht bekannt): Git oder Cloud-Ordner?

2. **Bei Git:**
   - Zeige `git status`
   - Fasse Änderungen zusammen
   - Frage ob committen und pushen
   - Commit-Message: `sync: YYYY-MM-DD [optional: Kontext]`

3. **Bei Cloud-Ordner:**
   - Bestätige automatische Sync
   - Biete manuelle Kopie an

## Commit-Message Format

```
sync: YYYY-MM-DD [optional: Kontext]

Beispiele:
- sync: 2025-01-15
- sync: 2025-01-15 nach weekly review
- sync: 2025-01-15 neue goals definiert
```

## Erste Einrichtung (falls nötig)

### Git Setup
```bash
git init
git add -A
git commit -m "initial: Personal AI setup"
git remote add origin <URL>
git push -u origin main
```

## Verhaltensregeln

### ALWAYS
- Frage nach Methode bevor du handelst
- Zeige immer erst den Status
- Erkläre was passiert bevor du es ausführst

### NEVER
- Pushe ohne Bestätigung
- Überschreibe ohne Warnung
- Gehe von einer Methode aus ohne zu fragen
