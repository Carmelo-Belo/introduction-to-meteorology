# introduction-to-meteorology

A small repository collecting material to present Meteorology to non-expert interested people :)

## Structure

- **`sources/`** — raw material collected to extract knowledge from, organized by type: `articles/`, `papers/`, `documents/`, `figures/` (also the home for images/diagrams earmarked for reuse directly in slides).
- **`presentations/`** — the presentations themselves. Each presentation gets its own subfolder (e.g. `presentations/introduction-to-meteorology/`). `presentations/plans/` holds one markdown plan per presentation — the living source of truth for its structure (slide count, per-slide content, audience, etc.), written before the slides are built.
- **`templates/`** — reusable LaTeX presentation templates, edited only when explicitly updating the template itself. `templates/assets/` holds shared visual assets (logos, color palettes, fonts, icons) used across templates and presentations.

## Workflow

1. Collect and file raw material under `sources/`.
2. Write a plan in `presentations/plans/<name>.md` describing the presentation's structure.
3. Copy the relevant template from `templates/` into a new `presentations/<name>/` folder — templates are never edited in place for a specific presentation.
4. Build the presentation from the copied template, following the plan.
