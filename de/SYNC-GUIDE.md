# Sync & Backup Guide

> Deine Personal AI Daten sind wertvoll. Hier erfährst du wie du sie sicherst.

## Schnellstart

**Für Entwickler:** Git (empfohlen)
**Für alle anderen:** Cloud-Ordner (Dropbox, iCloud, Google Drive)

---

## Option 1: Git (Empfohlen)

### Warum Git?
- Versionskontrolle: Sieh was sich wann geändert hat
- Backup: Daten liegen sicher auf GitHub/GitLab
- Multi-Device: Arbeite von verschiedenen Rechnern
- Kostenlos: Private Repos sind gratis

### Einrichtung

```bash
# Im personal-ai Ordner
cd personal-ai/claude

# Git initialisieren
git init

# Ersten Commit erstellen
git add -A
git commit -m "initial: Personal AI setup"

# Remote hinzufügen (GitHub)
git remote add origin https://github.com/DEIN-USER/personal-ai.git
git push -u origin main
```

### Täglicher Sync

Nutze den Command:
```
/pai:sync
```

Oder manuell:
```bash
git add -A
git commit -m "sync: $(date +%Y-%m-%d)"
git push
```

### .gitignore (Optional)

Falls du bestimmte Dateien nicht synchronisieren willst:

```gitignore
# Sensible Daten
.env
secrets/

# Temporäre Dateien
*.tmp
.DS_Store
```

---

## Option 2: Cloud-Ordner

### Warum Cloud-Ordner?
- Einfach: Keine Kommandozeile nötig
- Automatisch: Sync passiert im Hintergrund
- Vertraut: Du nutzt es wahrscheinlich schon

### Einrichtung

#### Dropbox
1. Verschiebe `personal-ai/` in deinen Dropbox-Ordner
2. Fertig - Sync passiert automatisch

#### iCloud (Mac)
1. Verschiebe `personal-ai/` nach `~/Library/Mobile Documents/com~apple~CloudDocs/`
2. Oder: Rechtsklick → "In iCloud Drive bewegen"

#### Google Drive
1. Installiere Google Drive Desktop
2. Verschiebe `personal-ai/` in den Google Drive Ordner

### Symlink Alternative

Falls du den Ordner nicht verschieben willst:

```bash
# Beispiel für Dropbox
ln -s ~/personal-ai ~/Dropbox/personal-ai
```

### Backup-Reminder

Cloud-Sync ist gut, aber für wichtige Meilensteine:

```bash
# Manuelles Backup erstellen
cp -r personal-ai/ "personal-ai-backup-$(date +%Y-%m-%d)/"
```

---

## Multi-Device Setup

### Mit Git

```bash
# Auf neuem Gerät
git clone https://github.com/DEIN-USER/personal-ai.git
cd personal-ai

# Vor dem Arbeiten
git pull

# Nach dem Arbeiten
git add -A && git commit -m "sync" && git push
```

### Mit Cloud-Ordner

- Dateien sind automatisch auf allen Geräten
- Warte auf vollständigen Sync bevor du arbeitest
- Bei Konflikten: Cloud-Dienst erstellt Kopien

---

## Sync-Rhythmus Empfehlung

| Frequenz | Aktion |
|----------|--------|
| Täglich | Nach dem letzten Standup: `/pai:sync` |
| Wöchentlich | Nach Weekly Review: Sync + kurze Commit-Message |
| Bei Meilensteinen | Expliziter Commit mit beschreibender Message |

---

## Troubleshooting

### Git: "Merge Conflict"

```bash
# Änderungen ansehen
git status
git diff

# Bei einfachen Konflikten
git pull --rebase

# Bei komplexen Konflikten: Frag deinen AI
/pai:sync
```

### Cloud: "Konflikt-Datei erstellt"

1. Öffne beide Dateien
2. Vergleiche die Unterschiede
3. Behalte die richtige Version
4. Lösche die Konflikt-Kopie

---

## Sicherheits-Tipps

1. **Private Repos nutzen** - Deine Notizen sind persönlich
2. **Keine Secrets committen** - API-Keys, Passwörter etc. gehören nicht ins Repo
3. **Regelmäßig syncen** - Je öfter, desto weniger Datenverlust-Risiko
4. **Backup vom Backup** - Einmal im Monat: Lokale Kopie auf externe Festplatte
