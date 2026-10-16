---
title: Editionsmerkmale & Typografie
description: Typografische Prinzipien, 1:1 Seitenkongruenz und phonetische Präzision der Neusatz-Ausgabe.
---

# Editionsmerkmale & Typografie

Die digitale Ausgabe von Macdonells *A Vedic Grammar for Students* folgt dem Grundsatz der **strengen 1:1 Seitenidentität** bei gleichzeitiger Nutzung moderner digitaler Vektortypografie.

---

## 📐 Das Prinzip der 1:1 Seitenkongruenz

In der klassischen Philologie und Indologie sind präzise Seiten- und Paragraphenverweise unverzichtbar. Ein wesentlicher Nachteil herkömmlicher digitaler Neusatzfassungen (z. B. unformatierte Textkonvertierungen oder abweichend umbrochene LaTeX-Ausgaben) ist der Verlust der Zitationsfähigkeit.

| Merkmal | Originaldruck (Oxford 1916) | Digitale Neusatz-Ausgabe (2026) |
| :--- | :--- | :--- |
| **Gesamtumfang** | 520 Seiten | 520 Seiten |
| **Titelei (Front Matter)** | S. `i`–`xii` (12 Seiten) | S. `i`–`xii` (PDF-Labels `i`–`xii`) |
| **Hauptteil & Syntax** | S. `1`–`380` | S. `1`–`380` |
| **Anhänge I–III** | S. `381`–`470` | S. `381`–`470` |
| **Indizes (Zweispaltig)** | S. `471`–`508` | S. `471`–`508` |
| **Seitenumbrüche** | Exakt identisch | Exakt seiten- und zeilenkongruent |

Zitate wie z. B. `Macdonell (1916), § 86, S. 78` verweisen im PDF exakt auf die digitale Seite mit dem PDF-Label `78`.

---

## 🖋️ Clarendon-Typografie

Der historische Satz der Clarendon Press zeichnete sich durch außergewöhnliche handwerkliche Disziplin aus:

### 1. Tabulares Punktraster im Inhaltsverzeichnis
Im Inhaltsverzeichnis (S. `ix`–`xii`) werden keine unregelmäßigen Punktfolgen gesetzt, sondern ein streng tabulares Punktraster, dessen Punkte vertikal und horizontal fluchten. Die Seitenzahlen schließen rechtsbündig bündig mit der Satzspiegelkante ab.

### 2. Kolumnentitel & Paragraphenzähler
- Auf geraden (linken) Seiten steht die Seitenzahl linksaußen, gefolgt vom Paragraphenanfang `[15`.
- Auf ungeraden (rechten) Seiten steht der Paragraphenabschluss `15]` vor der rechtsaußen stehenden Seitenzahl.
- In der Mitte der Kopfzeile steht das jeweilige Thema des Kapitels in Mediäval-Kapitälchen.

### 3. Mediäval-Kapitälchen (Small Capitals)
Für Überschriften, grammatische Kategorien (z. B. *ACTIVE*, *MIDDLE*, *PASSIVE*) und Eigennamen werden echte typografische Kapitälchen verwendet, um einen harmonischen Grauwert der Buchseite zu gewährleisten.

### 4. Zweispaltiger Registersatz
Die abschließenden Verzeichnisse:
- **Vedic Index** (S. 471–498)
- **General Index** (S. 499–508)
sind als präzise zweispaltige Register mit Zwischensteg und alphabetischen Initialen gesetzt.

---

## 🔤 Phonetische & Diakritische Exaktheit

Die vedische Grammatik erfordert eine nuancierte Wiedergabe historischer Sprachstufen:

### IAST-Standard
Sämtliche Vokale und Konsonanten des Sanskrit sind nach dem International Alphabet of Sanskrit Transliteration (IAST) ausgezeichnet:
- Sonantische Liquide: `ṛ`, `ṝ`, `ḷ`, `ḹ`
- Zerebrale / Retroflexe: `ṭ`, `ṭh`, `ḍ`, `ḍh`, `ṇ`, `ṣ`
- Palatale & Velare: `c`, `ch`, `j`, `jh`, `ñ`, `ś`, `ṅ`
- Nasale & Aspirationen: `ṃ` (Anusvāra), `ḥ` (Visarga)

### Vedische Tonakzente
Im Gegensatz zum klassischen Sanskrit war das Vedische eine Tonsprache mit melodischem Akzent. Die Neusatz-Ausgabe gibt alle Akzentstufen wieder:
- **Udātta** (Hochton): Gekennzeichnet durch Akut oder vertikalen Oberstrich.
- **Anudātta** (Tiefton): Gekennzeichnet durch horizontalen Unterstrich unter der betreffenden Silbe.
- **Svarita** (Gleit- bzw. Sturzton): Gekennzeichnet durch Zirkumflex oder vertikalen Oberstrich.

---

## 🧭 Navigation & PDF-Architektur

Die PDF-Datei wurde für wissenschaftliches Arbeiten in modernen PDF-Readern (Acrobat, Preview, PDF Viewer, Zotero) optimiert:

- **Hierarchischer Lesezeichenbaum (Outline)**: 81 Hauptkapitel, Unterabschnitte und Register sind direkt im PDF-Navigationsbaum verlinkt.
- **Native Page-Labels**:
  - `i` bis `xii` für die Titelei.
  - `1` bis `508` für das gesamte Hauptwerk.
  Eine Eingabe von `150` im PDF-Viewer springt direkt auf Buchseite 150 und nicht auf Seite 162.
- **Reiner Vektorsatz**: Unbegrenzte Skalierbarkeit, gestochen scharfe Darstellung auf hochauflösenden Retina-Displays und optimierte Druckausgabe.
