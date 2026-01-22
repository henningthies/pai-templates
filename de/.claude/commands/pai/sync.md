# Sync - Backup & Synchronisierung

Hilf dem User seine Personal AI Daten zu sichern und zu synchronisieren.

## Sync-Methoden

Der User hat zwei Optionen:

### Option 1: Git (Empfohlen für Entwickler)

```bash
# Status prüfen
git status

# Alles committen und pushen
git add -A
git commit -m "sync: $(date +%Y-%m-%d)"
git push
```

### Option 2: Cloud-Ordner (Dropbox, iCloud, Google Drive)

Falls der User einen Cloud-Ordner nutzt:
- Prüfe ob der Ordner im Cloud-Sync liegt
- Erkläre dass Änderungen automatisch synchronisiert werden
- Empfehle regelmäßige manuelle Backups für wichtige Meilensteine

## Ablauf

1. **Frage nach der Methode** (falls nicht bekannt):
   - "Nutzt du Git oder einen Cloud-Ordner (Dropbox, iCloud, etc.) für dein Backup?"

2. **Bei Git:**
   - Zeige `git status`
   - Fasse Änderungen zusammen
   - Frage ob committen und pushen
   - Führe aus mit sinnvoller Commit-Message

3. **Bei Cloud-Ordner:**
   - Bestätige dass Dateien automatisch synchronisiert werden
   - Biete an, eine manuelle Kopie zu erstellen falls gewünscht
   - Erkläre wie man den Sync-Status prüft

## Commit-Message Format

```
sync: YYYY-MM-DD [optional: Kontext]

Beispiele:
- sync: 2025-01-15
- sync: 2025-01-15 nach weekly review
- sync: 2025-01-15 neue goals definiert
```

## Erste Einrichtung

Falls noch kein Sync eingerichtet:

### Git Setup
```bash
git init
git add -A
git commit -m "initial: Personal AI setup"
# Remote hinzufügen (GitHub, GitLab, etc.)
git remote add origin <URL>
git push -u origin main
```

### Cloud Setup
- Verschiebe den personal-ai Ordner in deinen Cloud-Sync Ordner
- Oder erstelle einen Symlink

## ALWAYS
- Frage nach der bevorzugten Methode bevor du handelst
- Bei Git: Zeige immer erst den Status
- Erkläre was passiert bevor du es ausführst

## NEVER
- Pushe ohne Bestätigung
- Überschreibe ohne Warnung
- Gehe von einer Methode aus ohne zu fragen
