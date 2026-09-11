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

Custom sea/sunset-themed Beamer template built for this repo (`albatrossbeamer` class), v1/first-pass — expect iteration. **Requires XeLaTeX** (`xelatex albatrossbeamer.tex`), since it uses `fontspec` with bundled font files (no system font install needed).

**Look:** plain white background, black body text. Slide titles and the title-slide title use **Bebas Neue** in Deep Twilight (`#03045E`); slide subtitles (and the title-slide subtitle) use **Lato** in Turquoise Surf (`#00B4D8`); body/caption text uses **Josefin Sans**. Blocks use a Bright Teal Blue (`#0077B6`) title bar over a Light Cyan (`#CAF0F8`) body; bullets are Turquoise Surf. The albatross logo sits top-right on every slide (larger on the title slide). The sunset accent colors (`#FF8800` orange, `#FFDD00` yellow) are intentionally *not* used for text — they're reserved for annotating figures (e.g. a TikZ box/circle drawn over an image to highlight a region), demonstrated in the demo file.

- Key files: `albatrossbeamer.cls` (the class), `albatrossbeamer.tex` (demo presentation: title page, bullets/alert, blocks/columns, a figure-highlighting example), `albatrosscolor.sty` (color definitions), `logo/albatros-logo.jpg` (local copy of the shared logo in `templates/assets/`), `fonts/{bebasneue,josefinsans,lato}/` (bundled font files + their `OFL.txt` licenses)
