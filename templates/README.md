# Templates

Reusable LaTeX Beamer templates. To start a new presentation, copy a template folder into `presentations/<name>/` and build there — never edit these files in place (see the root `CLAUDE.md` for the full convention).

## `simple-beamer-theme/`

A minimalist, monochrome Beamer theme by Facundo Muñoz ([github.com/famuvie/beamerthemesimple](http://github.com/famuvie/beamerthemesimple), CC BY-SA 4.0).

**Look:** clean white slides, grey structural accents (dark grey titles/structure, medium grey body text, light grey rounded/shadowed blocks), slide numbers in the footer, no navigation icons. Its signature feature is a large, semi-transparent **watermark** in the background of each slide — can be a logo image or plain text (e.g. a big faded word), positioned/offset via `\setwatermark`. No title-page branding or color options beyond the fixed grey palette.

- Key files: `beamerthemesimple.sty` (the theme), `demo.tex` (example presentation showing watermark, blocks, columns, alerts), `img/Heckert_GNU_white.png` (sample watermark image), `references.bib`

## `lut-template/`

LUT University (Lappeenranta–Lahti University of Technology) Beamer template (`lutbeamer` class).

**Look:** full-bleed branded slides — a full-page front-page image and a matching closing slide with the LUT logo overlaid on a background image. Two overall themes via class option: `light` (default) or `dark`; per-slide switching isn't supported. An accent "title dash" color is configurable via class option: `green` (default), `orange`, `pink`, `black`, or `nodash`, drawing from a defined palette (`lutcolor.sty`: green/black/orange/pink plus grey, viridian and a couple of extra greys/blues). Includes automatic outline slides at each section, a glossary/nomenclature system, and BibTeX bibliography support. Defaults to 16:9 (switchable to 4:3 via `aspectratio=43`).

- Key files: `lutbeamer.cls` (the class), `lutbeamer.tex` (example/demo presentation covering title page, sections, images, columns, glossary, bibliography), `lutcolor.sty` (color definitions), `nomenclature.tex` (glossary entries), `references.bib`, `figures/` (in-content images), `logos/` (front-page image, background image, LUT logo in color and white)

## `albatross-template/`

Custom sea/sunset-themed Beamer template built for this repo (`albatrossbeamer` class), v1/first-pass — expect iteration. **Requires XeLaTeX** (`xelatex albatrossbeamer.tex`), since it uses `fontspec` with bundled font files (no system font install needed). Font sizes are set as explicit point values throughout (not LaTeX's relative `\Large`/`\normalsize`).

**Look (content slides):** plain white background. Slide titles use **Bebas Neue** in Deep Twilight (`#03045E`); subtitles use **Lato**, bold, in Bright Teal Blue (`#0077B6`); body/caption text uses **Josefin Sans**. Bulleted lists use filled circles that step down the sea palette by nesting level (Deep Twilight → Bright Teal Blue → Turquoise Surf). Bold `\alert{}` text is Deep Twilight. Two transparent, bordered content-box styles replace shadowed native blocks: `seabox` (titled — Bright Teal Blue title/border, Light Cyan body, both translucent) and `surfbox` (titleless — Turquoise Surf translucent fill and border). The albatross logo sits top-right.

**Look (title slide):** a full-bleed background photo (`background/albatrosHD.jpg` — swap for a different presentation's own cover image) at full opacity, behind a semi-transparent Light Cyan (`#CAF0F8`) box at 70% opacity wrapping the title/subtitle/author/date, left-flush to the slide with a gap before the right edge. Title in Bebas Neue (Deep Twilight), subtitle in Lato bold (Bright Teal Blue), author/date plain. No institute line. Logo top-right, matching the size/position used on content slides.

The sunset accent colors (`#FF8800` orange, `#FFDD00` yellow) are intentionally *not* used for text — they're reserved for annotating figures (e.g. a TikZ box/circle drawn over an image to highlight a region), demonstrated in the demo file.

- Key files: `albatrossbeamer.cls` (the class), `albatrossbeamer.tex` (demo presentation: title page, bullets/alert, `seabox`/`surfbox`, a figure-highlighting example), `albatrosscolor.sty` (color definitions, including the neutral `darkgrey`), `logo/albatros-logo.png` (local copy of the shared logo in `templates/assets/`), `background/albatrosHD.jpg` (title-slide background photo), `fonts/{bebasneue,josefinsans,lato}/` (bundled font files + their `OFL.txt` licenses)

## `bsc-template/`

BSC / Earth Sciences Department (CES) Beamer template (`bscbeamer` class), built to match the official `Template-BSC+CES.pptx` brand deck one level up. **Requires XeLaTeX** (`xelatex bscbeamer.tex`, run twice for references), since it loads Carlito via `fontspec` — a Calibri metric-compatible substitute (system font, package `fonts-crosextra-carlito` on Debian/Ubuntu) rather than bundling Calibri itself, which is proprietary.

**Look (title slide):** left third is a full-bleed navy-tinted Earth photo (`assets/bg-earth.png`) over a solid navy (`#1A2C57`) backdrop, scoped in via a background template around the title frame (swap the image for a different presentation's own cover photo). Right two-thirds is white, with the "Earth Sciences Department | BSC" logo lockup (`assets/logo-earth-sciences-bsc.png`) top-right, a bold uppercase title, subtitle, and a navy author/date footer bar at the bottom.

**Look (section-header & closing slides):** built with the `\bscsectionpage{title}{subtitle}` command — a full-bleed background photo (`assets/bg-section.jpg` by default; override per presentation with `\setbscsectionphoto{...}`) under a semi-transparent navy scrim so any swapped-in photo still reads on-brand, the BSC logo (`assets/logo-bsc.jpg`) as a badge top-left, and bold uppercase title/subtitle in white. Used for both mid-deck section breaks and a closing "Thank you / Q&A" slide.

**Look (content slides):** white background, solid navy frametitle band with bold uppercase white title (optional subtitle line beneath, no logo in the band), circular bullet markers in navy, plain black body text. The BSC logo sits small in the footline, bottom-left, with the frame number bottom-right.

**Content-building blocks:** beyond the frame types above, the class also provides general-purpose tikz styles for comparison/flow/timeline content — `bscbox` (rounded, navy-bordered callout/comparison box; override `draw=`/`text width=` per use, e.g. semantic green/red for a pros/cons pair), `bscarrow` (navy arrow for chaining `bscbox` nodes into a flow diagram), and `bsctimelinearrow`/`bsctimelinestem`/`bsctimelinelabel` (spine, tick, and label styles for a zigzag milestone timeline). `\bscphotocollage{...}{...}{...}{...}{...}` lays out exactly five images as a scattered, rotated, white-bordered photo collage. `bscbeamer.tex` demos all of these (a two-step pros/cons reveal, two text+figure variants, a milestone timeline, a box-and-arrow flow diagram, and the photo collage).

Only the reusable frame types and content-building blocks above are implemented — the source deck's one-off icon-card content layouts (e.g. rounded "SERVICES/TOOLS" boxes) aren't part of the template.

- Key files: `bscbeamer.cls` (the class), `bscbeamer.tex` (demo presentation: title page, a section page, bullets/alert, two-column content, closing page, plus the content-building-block demos above), `bsccolor.sty` (color definitions: `bscnavy`, `bscblue`, `bscgrey`, `bscwhite`, `bscmidgrey`, `bscframetitlebg`, `bscbodytext`), `assets/` (`logo-bsc.jpg`, `logo-earth-sciences-bsc.png`, `bg-earth.png`, `bg-section.jpg` — extracted directly from `Template-BSC+CES.pptx`), `figures/` (empty placeholder — a presentation copy drops its own content figures here, e.g. for the timeline/collage examples)
