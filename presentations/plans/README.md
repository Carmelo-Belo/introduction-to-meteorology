# Presentation plans

One markdown file per presentation, written before the slides are built. Each plan is the living source of truth for that presentation's structure — it should be detailed enough to reproduce the presentation from scratch, and kept in sync if the presentation changes.

## Front matter

Each plan should open with:

- **Audience** — who the presentation is for and their background
- **Template** — which `templates/` folder it's built from
- **Sources (general)** — the source material in `sources/` the presentation draws on, and which module(s) each item feeds
- **Number of slides**
- **Status** — for long/in-progress plans, note which per-slide fields (see below) are filled in vs. still placeholders
- **Style notes** — recurring conventions across the presentation (e.g. a framing that should carry through every module, an asset reused in multiple places)

## Modular structure: module = section, slide = subsection

Organize the content into **modules** (thematic groups of slides, e.g. "Wind & pressure systems"). Each module is a `##` section, numbered from 0. Within a module, each **slide** is a `###` subsection, numbered `<module>.<slide>` (e.g. `### 2.10 Gusts & downbursts`) with a short descriptive label — this heading is just for navigating the plan, not the slide's actual on-screen title.

This structure keeps a long presentation (several dozen slides) organized, and doubles as a natural split into course sessions along module boundaries if the presentation is ever taught/delivered in parts.

## Per-slide table

Every slide subsection contains a two-column table, category on the left, the specific entry for that slide on the right:

| Category | Entry |
|---|---|
| **Title** | The slide's on-screen title |
| **Subtitle** | The slide's on-screen subtitle, if any |
| **Content** | The information/knowledge the slide conveys — what it's actually teaching |
| **Layout** | How the slide is organized: what elements it contains and how they're arranged (e.g. bullets left / image right, full-bleed figure with caption, table) |
| **Sources** | Figures or other material the slide uses, traceable back to specific files in `sources/` |

Example:

### 2.10 Gusts & downbursts

| Category | Entry |
|---|---|
| **Title** | Gusts & Downbursts |
| **Subtitle** | When a calm sky turns dangerous in seconds |
| **Content** | Define a gust vs. sustained wind; explain downburst formation; emphasize the danger signature for sailors — abrupt wind-speed spike and direction reversal with little warning. |
| **Layout** | Title + subtitle at top. Left half: 3-4 bullets (definition → formation → danger signs). Right half: full-height photo with caption. |
| **Sources** | `sources/figures/downburst.jpeg`; conceptual content from `sources/documents/introduction-to-meteorology-petterssen.pdf` |

**Drafting order:** it's fine — and expected for a large presentation — to fill in **Content** for every slide first (locking down the structure and what each slide teaches), then come back and fill in **Title**, **Subtitle**, **Layout**, and **Sources** once material is collected and visual/design decisions are made. Leave those rows' cells empty rather than guessing, and note the state in the front matter's **Status** field.
