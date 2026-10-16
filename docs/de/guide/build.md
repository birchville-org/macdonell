---
title: Bauanleitung & Pipeline
description: Kompilierung des Typst-Neusatzes, Outline-Injektion und Erzeugung der Dokumentation.
---

# Bauanleitung & Pipeline

Das Projekt ist auf vollständige Reproduzierbarkeit und minimalistische Abhängigkeiten ausgelegt.

---

## 📋 Voraussetzungen

Für den vollständigen Kompiliervorgang werden folgende Werkzeuge benötigt:

1. **[Typst](https://typst.app/)** (`typst` ab Version 0.13.0)
2. **Python 3** mit [`PyMuPDF`](https://pymupdf.readthedocs.io/) (wird automatisch via `uv` isoliert ausgeführt)
3. **[uv](https://docs.astral.sh/uv/)** (moderner, extrem schneller Python-Paketmanager)

---

## 🛠️ Kompilierung des Publikations-PDFs

### Schnelldurchlauf via Make
Im Wurzelverzeichnis des Repositories:
```bash
make build
```

Oder direkt über das Shell-Skript:
```bash
./scripts/build.sh
```

### Der zweistufige Build-Prozess
1. **Typst-Kompilierung**:
   ```bash
   typst compile typst/macdonell.typ dist/Macdonell_1916_Vedic_Grammar_Digital_Edition.pdf
   ```
   Erzeugt das 520-seitige Roh-PDF in Vektorsatzqualität.
2. **TOC- & Label-Injektion**:
   ```bash
   python3 scripts/inject_toc.py
   ```
   Liest [`data/macdonell_1916.toc.txt`](https://github.com/birchville-org/macdonell/blob/main/data/macdonell_1916.toc.txt), parsed die 81 hierarchischen Gliederungspunkte und injiziert:
   - Die PDF-Lesezeichen (Outline).
   - Die nativen PDF-Page-Labels (`i`–`xii` für die ersten 12 Seiten, `1`–`508` für das Hauptwerk).
   - Die konsolidierte Export-TOC-Datei `dist/Macdonell_1916_Vedic_Grammar_Digital_Edition.toc.txt`.

---

## 📖 Lokale Dokumentations-Vorschau

Die vorliegende Dokumentation basiert auf **Material for MkDocs** im Birchville „Scholarly Synthesis“-Design.

### Dokumentationsserver starten
```bash
make docs-serve
```
Oder direkt mit `uv`:
```bash
uv run --with mkdocs-material mkdocs serve
```
Die Dokumentation steht anschließend unter `http://127.0.0.1:8000` im Browser zur Verfügung.

### Statischen Build erzeugen
```bash
make docs-build
```
Erzeugt die statischen HTML-Seiten im Verzeichnis `site/`.

---

## 🚀 GitHub Actions Continuous Deployment

Bei jedem Push auf den Branch `main` (sofern `docs/**` oder `mkdocs.yml` modifiziert wurden) baut der Workflow [`.github/workflows/deploy.yml`](https://github.com/birchville-org/macdonell/blob/main/.github/workflows/deploy.yml) die Dokumentation vollautomatisch und veröffentlicht sie via GitHub Pages unter:

**[https://birchville-org.github.io/macdonell/](https://birchville-org.github.io/macdonell/)**
