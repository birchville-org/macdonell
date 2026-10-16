# Arthur Anthony Macdonell: A Vedic Grammar for Students (1916)

[![Documentation](https://img.shields.io/badge/docs-GitHub%20Pages-b45309?style=flat-square)](https://birchville-org.github.io/macdonell/)
[![Release](https://img.shields.io/github/v/release/birchville-org/macdonell?style=flat-square)](https://github.com/birchville-org/macdonell/releases/latest)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

**Digitale Vektor-Neusatz-Edition mit strenger 1:1 Seitenkongruenz**

Dieses Projekt enthält die digitale Neusatz-Ausgabe des Standardwerks *A Vedic Grammar for Students* von Arthur Anthony Macdonell (Boden Professor of Sanskrit at Oxford), erschienen 1916 bei der Oxford Clarendon Press.

Die offizielle Online-Dokumentation mit Editionsmerkmalen und Systematik ist verfügbar unter:  
👉 **[https://birchville-org.github.io/macdonell/](https://birchville-org.github.io/macdonell/)**

---

## 📖 Editionsmerkmale

- **Strenge 1:1 Seitenidentität**: Exakt 520 Seiten (Titelei i–xii, Hauptteil 1–508). Jede digitale Seite entspricht exakt der physischen Buchseite des Originaldrucks von 1916.
- **Clarendon-Typografie**:
  - Tabulares Punktraster im Inhaltsverzeichnis (rechtsbündig fluchtende Punktleisten).
  - Originale Paragraphen- und Kolumnentitel (`[15` / `15]`).
  - Mediäval-Kapitälchen (Small Capitals) für Titelei und Kapitelüberschriften.
  - Zweispaltiger Satz für den Vedischen Index (S. 471–498) und Generalindex (S. 499–508).
- **Phonetische & Linguistische Präzision**: Vollständige typografische Wiedergabe aller IAST-Diakritika, Devanāgarī-Grapheme und vedischen Akzente (Udatta, Anudatta, Svarita).
- **Navigation & Barrierefreiheit**:
  - Vollständiger 81-stufiger hierarchischer PDF-Lesezeichenbaum (Outline).
  - Native PDF-Page-Labels (`i`–`xii` für die ersten 12 Seiten, danach `1`–`508`).

---

## 📂 Projektstruktur

```text
macdonell/
├── docs/                         # Material for MkDocs Dokumentationsportal
│   ├── assets/birchville_logo.png
│   ├── stylesheets/birchville.css
│   ├── edition/                  # Editionsmerkmale & Gliederung
│   └── index.md                  # Startseite
├── typst/
│   └── macdonell.typ             # Vollständiger Typst-Neusatz-Quellcode
├── data/
│   ├── book.md                   # Konsolidierter Volltext (Single Source of Truth)
│   ├── book.json                 # Semantischer AST mit allen Strukturblöcken
│   ├── macdonell_1916.toc.txt    # Editierbare Lesezeichen- & Paginierungsspezifikation
│   ├── macdonell_1916.tei.xml    # TEI-P5-konforme XML-Archivfassung
│   └── macdonell_1916.epub       # Reflowfähiges E-Book (EPUB 3)
├── dist/
│   └── Macdonell_1916_Vedic_Grammar_Digital_Edition.pdf  # Kompiliertes Publikations-PDF
├── scripts/
│   ├── build.sh                  # Shell-Build-Skript
│   └── inject_toc.py             # Outline- & Page-Label-Injektor (PyMuPDF)
├── .github/workflows/
│   └── deploy.yml                # GitHub Pages Deployment Workflow
├── mkdocs.yml                    # MkDocs-Konfiguration (Scholarly Synthesis)
├── Makefile                      # 'make build', 'make docs-serve', 'make docs-build'
├── LICENSE                       # MIT License
└── README.md
```

---

## 🛠️ Bauanleitung (Build)

### Voraussetzungen
- [Typst](https://typst.app/) (`typst` Version 0.13.0+)
- Python 3 mit `pymupdf` (optional via `uv`)

### Kompilieren
Im Projektverzeichnis ausführen:
```bash
make build
```
oder direkt:
```bash
./scripts/build.sh
```

### Inhaltsverzeichnis (TOC) anpassen
Titel oder Seitenbezüge können direkt in [`data/macdonell_1916.toc.txt`](data/macdonell_1916.toc.txt) editiert werden. Ein anschließendes `make build` spielt die Änderungen sofort in das PDF ein.

### Dokumentation lokal testen & bauen
```bash
# Entwicklungsserver mit Hot-Reload
make docs-serve

# Statische Dokumentation für GitHub Pages bauen
make docs-build
```

---

## 📜 Lizenz & Provenienz
- **Originalwerk**: Arthur Anthony Macdonell (1854–1930), *A Vedic Grammar for Students*, Oxford University Press 1916 (Gemeinfrei / Public Domain).
- **Digitaler Neusatz & TEI-Encoding**: [MIT License](LICENSE) (AlexandriaSandwich Pipeline, Birchville Foundation).

