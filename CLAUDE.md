# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository collects material to build presentations that introduce meteorology to non-expert audiences. It is not a software project — there is no build/lint/test tooling. The main "artifacts" are LaTeX presentations and the markdown plans that define their content.

## Structure

- `sources/` — raw material to extract knowledge/concepts from, split by type:
  - `sources/articles/` — news/popular articles
  - `sources/papers/` — journal papers
  - `sources/documents/` — reports, official docs, other reference material
  - `sources/figures/` — images, plots, diagrams, including material intended for direct reuse in presentation slides
- `presentations/` — the presentations themselves. Each presentation lives in its own subfolder (e.g. `presentations/introduction-to-meteorology/`), created when work on that presentation begins.
  - `presentations/plans/` — one markdown plan per presentation, named `<presentation-name>.md`. This is the **living source of truth** for the presentation's structure: audience, number of slides, content per slide, and any other detail needed to reproduce the presentation from the plan alone. Write or update this file *before* building/editing slides, and keep it in sync with the actual presentation content.
- `templates/` — reusable LaTeX presentation templates.
  - `templates/assets/` — shared visual assets (logos, color palettes, fonts, icons) used across templates and presentations.

## Working conventions

- **Never edit a template in place to build a specific presentation.** When starting a new presentation, copy the relevant file(s) from `templates/` into a new `presentations/<name>/` folder and build there. Only edit files under `templates/` when the user explicitly asks to change the template itself (e.g. "update the template to use a different color scheme").
- **Plans drive presentations, not the other way around.** Before creating or substantially changing a presentation's slides, check for (or write) its plan in `presentations/plans/`. If slide content changes during development, update the plan to match.
- Templates are generally LaTeX (e.g. Beamer). Expect to edit `.tex` source directly when adjusting visual style, layout, or structure.
