---
title: Build Guide & Pipeline
description: Compiling the Typst edition, outline injection, and local documentation server.
---

# Build Guide & Pipeline

The project is architected for full reproducibility and minimal build dependencies.

---

## 📋 Prerequisites

Building the complete publication release requires:

1. **[Typst](https://typst.app/)** (`typst` version 0.13.0 or higher)
2. **Python 3** with [`PyMuPDF`](https://pymupdf.readthedocs.io/) (isolated automatically via `uv`)
3. **[uv](https://docs.astral.sh/uv/)** (fast Python package manager)

---

## 🛠️ Compiling the Publication PDF

### Quick Build via Make
From the repository root directory:
```bash
make build
```

Or invoke the build script directly:
```bash
./scripts/build.sh
```

### The Two-Stage Pipeline
1. **Typst Compilation**:
   ```bash
   typst compile typst/macdonell.typ dist/Macdonell_1916_Vedic_Grammar_Digital_Edition.pdf
   ```
   Generates the raw 520-page vector PDF.
2. **TOC & Label Injection**:
   ```bash
   python3 scripts/inject_toc.py
   ```
   Reads [`data/macdonell_1916.toc.txt`](https://github.com/birchville-org/macdonell/blob/main/data/macdonell_1916.toc.txt), parses the 81-step hierarchical outline, and injects:

   - The PDF outline tree.
   - Native PDF page labels (`i`–`xii` for front matter, `1`–`508` for the main text).
   - Consolidated TOC export `dist/Macdonell_1916_Vedic_Grammar_Digital_Edition.toc.txt`.


---

## 📖 Local Documentation Preview

This documentation site is built with **Material for MkDocs** using the Birchville "Scholarly Synthesis" theme.

### Start Local Development Server
```bash
make docs-serve
```
Or directly using `uv`:
```bash
uv run --with mkdocs-material --with mkdocs-static-i18n mkdocs serve
```
Open `http://127.0.0.1:8000` in your web browser.

### Generate Production Static Build
```bash
make docs-build
```
Builds the multilingual static site into the `site/` directory.

---

## 🚀 GitHub Actions Continuous Deployment

On every push to `main` modifying `docs/**` or `mkdocs.yml`, the workflow [`.github/workflows/deploy.yml`](https://github.com/birchville-org/macdonell/blob/main/.github/workflows/deploy.yml) compiles and deploys the site to:

**[https://birchville-org.github.io/macdonell/](https://birchville-org.github.io/macdonell/)**
