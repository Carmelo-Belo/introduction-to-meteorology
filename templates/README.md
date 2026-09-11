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
