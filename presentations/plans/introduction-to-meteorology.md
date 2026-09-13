# Introduction to Meteorology

**Subtitle:** Theory and practice to understand better what's going on in the atmosphere

## Audience

Sailing course students: recreational/coastal sailors with no prior meteorology background. Framing is practical and safety-oriented throughout — theory is introduced only as far as needed to support two applied goals: (1) recognizing and reacting to weather while underway, and (2) properly consulting and interpreting forecasts before and during a passage. Long-form course, designed to also work split across multiple sessions along module boundaries.

## Template

`templates/albatross-template/` (copy into `presentations/introduction-to-meteorology/` before building — never edit the template in place). Title slide keeps the template's background-image cover; content slides use the standard frametitle/framesubtitle layout.

## Sources (general)

- `sources/documents/introduction-to-meteorology-petterssen.pdf` — core physical concepts (Modules 1-4)
- `sources/documents/introduction-to-meteorology-skok.pdf` — core physical concepts (Modules 1-4)
- `sources/articles/weather_vs_climate_esa.md` — weather vs. climate framing (Module 0)
- `sources/figures/weather_vs_climate.jpg`, `sources/figures/weather-versus-climate-illustrated-with-clothes.png` — Module 0
- `sources/figures/downburst.jpeg` — Module 2 (gusts/downbursts) and Module 5 (dangerous weather)
- Additional sourcing still needed for: local winds (sea/land breeze, katabatic/regional winds), synoptic chart examples, GRIB/routing app screenshots, NAVTEX/VHF procedure references, tropical cyclone tracking imagery — to be added to `sources/` as each module is built.

Per-slide `Sources` rows below are left empty until specific material is collected; this general list tracks what's already available.

## Number of slides

~82, across 11 modules (0-10).

## Status

Per-slide tables below have only the **Content** row filled in. **Title**, **Subtitle**, **Layout**, and **Sources** are intentionally left empty and will be filled in as material is collected and visual design decisions are made.

## Style notes

- Keep Module 0's weather-vs-climate treatment intentionally high-level (2 slides) — no need for a dedicated deep-dive module.
- Practical/safety framing throughout: each theory module should connect back to "why this matters underway" wherever possible.
- Reuse the downburst figure across Modules 2 and 5 rather than sourcing a duplicate image.

---

## Module 0 — Welcome & framing (6 slides)

### 0.1 Title slide

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | "Introduction to Meteorology" / "Theory and practice to understand better what's going on in the atmosphere" |
| **Layout** | |
| **Sources** | |

### 0.2 Why weather matters at sea

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Hook framing the whole course: weather knowledge affects safety, crew comfort, and passage-planning decisions. Sets up the "why should I care" motivation before any theory. |
| **Layout** | |
| **Sources** | |

### 0.3 Course roadmap

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Visual overview of Modules 1-10, showing the course's arc from atmospheric fundamentals through to practical forecast consultation and a voyage-planning case study. |
| **Layout** | |
| **Sources** | |

### 0.4 Weather vs. climate — the formal distinction

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Serious, definitional framing: weather = state of the atmosphere now/short-term; climate = long-term statistical pattern. Kept intentionally high-level, no dedicated deep-dive. |
| **Layout** | |
| **Sources** | `sources/figures/weather_vs_climate.jpg` |

### 0.5 Weather vs. climate — the clothes analogy

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Lighter, memorable reinforcement of 0.4's distinction via the clothes analogy ("weather is your mood, climate is your personality" / what you wear today vs. your wardrobe) — makes the definition stick before moving on. |
| **Layout** | |
| **Sources** | `sources/figures/weather-versus-climate-illustrated-with-clothes.png` |

### 0.6 Weather vs. climate — why it matters for sailors

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Forecasts (weather) drive day-to-day passage decisions; climate drives higher-level choices like season and cruising ground. Closes out the Module 0 framing before diving into physics. |
| **Layout** | |
| **Sources** | |

---

## Module 1 — The atmosphere & basic physics (12 slides)

### 1.1 What is the atmosphere

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Composition of the atmosphere (N₂, O₂, trace gases); thin-shell analogy relative to Earth's size to give a sense of scale. |
| **Layout** | |
| **Sources** | |

### 1.2 Vertical structure of the atmosphere

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Layers of the atmosphere (troposphere, stratosphere, etc.); establish that essentially all weather relevant to sailors happens in the troposphere. |
| **Layout** | |
| **Sources** | `sources/figures/vertical-structure-atmosphere.jpg`, `sources/figures/vertical-structure-atmosphere-drawing.jpg` |

### 1.3 Temperature in the atmosphere

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Lapse rate basics; why temperature decreases with altitude in the troposphere. |
| **Layout** | Small side box: upward arrow labeled "Height ↑" paired with a downward arrow labeled "Temperature ↓", visually showing the inverse relationship. |
| **Sources** | |

### 1.4 Pressure

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Definition of atmospheric pressure, units (hPa/mb), and why it decreases with altitude. |
| **Layout** | Small side box: upward arrow labeled "Height ↑" paired with a downward arrow labeled "Pressure ↓", visually showing the inverse relationship. |
| **Sources** | |

### 1.5 Humidity

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Define humidity (water vapor content of the air) at a high level — absolute vs. relative humidity, no psychrometrics. Establish that pressure, temperature, and humidity are the three primary variables meteorologists track to describe the state of the atmosphere, completing the trio introduced via Modules 1.3-1.4. Briefly flag why humidity matters for sailors (fog risk, comfort, visibility), to be revisited in later modules. |
| **Layout** | Small side box: upward arrow labeled "Height ↑" paired with a downward arrow labeled "Humidity ↓", visually showing the inverse relationship. |
| **Sources** | |

### 1.6 Barometric tendency

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | General rule of thumb linking the three variables from 1.5 to short-term weather trend: falling pressure with generally rising temperature and humidity signals deteriorating weather approaching; rising pressure with generally falling temperature and humidity signals improving/clearing weather. Framed as a simple, memorable heuristic — the practical skill of reading the on-board barometer trend against a synoptic chart is covered later in Module 6.6, and the frontal-passage signs it anticipates are covered in Module 3.7. |
| **Layout** | |
| **Sources** | |

### 1.7 Density and the gas law

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Simple, non-derivation-heavy explanation of how temperature, pressure, and density relate to one another. |
| **Layout** | |
| **Sources** | |

### 1.8 Hydrostatic balance

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Why the atmosphere neither collapses to the surface nor escapes to space — balance between gravity and the vertical pressure gradient. |
| **Layout** | |
| **Sources** | |

### 1.9 Solar heating & Earth's energy balance

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Uneven solar heating by latitude as the root driver of atmospheric motion; sets up global circulation. |
| **Layout** | |
| **Sources** | `sources/figures/solar-radiation-on-earth.png`, `sources/figures/solar-radiation-incidence.png` |

### 1.10 Global atmospheric circulation

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Hadley, Ferrel, and Polar cells; how they produce the prevailing wind belts sailors encounter at different latitudes. |
| **Layout** | |
| **Sources** | `sources/figures/hadley-cell-schematic.jpg`, `sources/figures/hadley-cell-schematic-with-globe.png`, `sources/figures/hadley-cell-ideal.png`, `sources/figures/earth-global-circulation.svg` (vector original), `sources/figures/earth-global-circulation.png` (converted, LaTeX-includable) |

### 1.11 The Coriolis effect

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Intuitive (non-mathematical) explanation of the Coriolis effect and how deflection direction differs by hemisphere. |
| **Layout** | |
| **Sources** | `sources/figures/coriolis-effect-globe.png`, `sources/figures/coriolis-effect-infographic.jpg` |

### 1.12 Recap — from sun to wind

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Ties the module's physics together into one causal chain: solar heating → circulation → Coriolis → wind, closing Module 1 before Module 2 goes deeper on wind/pressure systems. |
| **Layout** | |
| **Sources** | |

---

## Module 2 — Wind & pressure systems (11 slides)

### 2.1 Reading isobars

| Category     | Entry                                                                                           |
| ------------ | ----------------------------------------------------------------------------------------------- |
| **Title**    | Pressure systems                                                                               |
| **Subtitle** | Pressure importance and isobars                                                                |
| **Content**  | How to infer wind direction and strength from isobar spacing and curvature on a pressure chart. |
| **Layout**   | Right: isobars map figure. Bottom-left: Albatross template seabox with the definition of an isobar. Top-left: text box noting that pressure is an especially relevant variable in meteorology, as it influences many aspects of the atmosphere at different scales. |
| **Sources**  | `sources/figures/isobars-map.png`                                                                |

### 2.2 Highs and lows — definitions

| Category | Entry |
|---|---|
| **Title** | Pressure systems |
| **Subtitle** | Highs and Lows |
| **Content** | High-pressure seabox: "Area with higher pressure relative to the surroundings, central descending air (**subsidence**) and diverging air at the surface." Low-pressure seabox: "Area with lower pressure relative to the surroundings, central rising air (**uplift**) and converging air at the surface." |
| **Layout** | Figure centered across the top. Below it, two seaboxes side by side: high-pressure definition on the left, low-pressure definition on the right. "Subsidence" and "uplift" bolded per template convention. |
| **Sources** | `sources/figures/high-and-lows-2d.jpg` |

### 2.3 Highs and lows — characteristics

| Category | Entry |
|---|---|
| **Title** | Pressure systems |
| **Subtitle** | Highs and Lows |
| **Content** | Table comparing characteristics of high- and low-pressure systems (e.g. wind circulation direction, associated weather, typical strength/extent) and the type of weather typically associated with each. Exact rows/columns and layout to be defined later. |
| **Layout** | |
| **Sources** | |

### 2.4 What is wind

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Wind as air moving from high to low pressure; basic definition before introducing the forces that shape it. |
| **Layout** | |
| **Sources** | |

### 2.5 Pressure gradient force

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Relationship between isobar spacing and wind strength — tighter spacing means stronger wind. |
| **Layout** | |
| **Sources** | |

### 2.6 The Coriolis effect on wind

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | How the Coriolis effect acts on moving air specifically, introducing the geostrophic wind concept. |
| **Layout** | |
| **Sources** | |

### 2.7 Geostrophic wind vs. surface wind

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Difference between upper-level geostrophic wind and real surface wind due to friction. |
| **Layout** | |
| **Sources** | |

### 2.8 Buys Ballot's Law

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Practical rule of thumb for sailors: stand with your back to the wind, low pressure is on your left (Northern Hemisphere). Directly actionable underway. |
| **Layout** | |
| **Sources** | |

### 2.9 Sea breeze & land breeze

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Diurnal local wind cycle driven by differential land/sea heating; direct relevance to coastal sailing timing. |
| **Layout** | |
| **Sources** | `sources/figures/land-and-sea-breeze.jpeg` |

### 2.10 Katabatic/valley winds and other local effects

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Local/regional wind phenomena caused by terrain funneling and acceleration (e.g. Mistral, Bora) — examples relevant to the course's sailing area(s). |
| **Layout** | |
| **Sources** | |

### 2.11 Gusts & downbursts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Define a gust vs. sustained wind; explain downburst formation (cold, dense air descending from a thunderstorm cell and spreading out on impact); emphasize the danger signature for sailors — abrupt wind-speed spike and direction reversal with little warning. Previews squall-line coverage in Module 5. |
| **Layout** | |
| **Sources** | |

---

## Module 3 — Fronts, air masses & mid-latitude systems (8 slides)

### 3.1 Air masses

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Definition of an air mass, source regions, and characteristics (temperature/humidity) inherited from those regions. |
| **Layout** | |
| **Sources** | |

### 3.2 What is a front

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | A front as the boundary between two air masses; sets up the specific front types covered next. |
| **Layout** | |
| **Sources** | |

### 3.3 Cold fronts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Structure of a cold front, associated weather signs, and the characteristic wind shift on passage. |
| **Layout** | |
| **Sources** | |

### 3.4 Warm fronts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Structure of a warm front and its associated (typically more gradual) weather signs. |
| **Layout** | |
| **Sources** | |

### 3.5 Occluded fronts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | How occluded fronts form when a cold front catches up to a warm front, and the associated weather. |
| **Layout** | |
| **Sources** | |

### 3.6 Life cycle of a mid-latitude cyclone

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Formation-to-dissipation life cycle of a mid-latitude cyclone, tying together the air mass and front concepts from earlier in the module. |
| **Layout** | |
| **Sources** | |

### 3.7 Reading the sky for a frontal passage

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Practical signs to watch for while underway: characteristic cloud sequence ahead of a front, pressure drop, and wind shift — actionable, observation-based content. |
| **Layout** | |
| **Sources** | |

### 3.8 Recap — annotated weather map

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Worked example: a real or representative weather map annotated to identify air masses, fronts, and the associated weather, consolidating the module. |
| **Layout** | |
| **Sources** | |

---

## Module 4 — Clouds & precipitation (6 slides)

### 4.1 Why clouds form

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Condensation and adiabatic cooling basics, kept non-mathematical, as the mechanism behind cloud formation. |
| **Layout** | |
| **Sources** | |

### 4.2 Cloud classification

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Overview of low/mid/high cloud families and the main genus types within each. |
| **Layout** | |
| **Sources** | |

### 4.3 Cumulus family

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Progression from fair-weather cumulus to towering cumulus to cumulonimbus, and what that progression signals. |
| **Layout** | |
| **Sources** | |

### 4.4 Stratus & nimbostratus

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Stratus and nimbostratus as signals of steady, prolonged rain rather than sudden/severe weather. |
| **Layout** | |
| **Sources** | |

### 4.5 What clouds tell a sailor

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Quick visual cheat-sheet summarizing Module 4's cloud types against what each one signals for someone underway. |
| **Layout** | |
| **Sources** | |

### 4.6 Lightning & thunder basics

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Basic lightning safety: distance-estimation rule (e.g. flash-to-bang counting) and avoidance guidance for a boat. |
| **Layout** | |
| **Sources** | |

---

## Module 5 — Dangerous weather for sailors (8 slides)

### 5.1 Thunderstorms & squalls

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Thunderstorm formation and the specific danger of squall lines for a vessel underway. |
| **Layout** | |
| **Sources** | |

### 5.2 Downbursts/microbursts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Revisit the downburst physics from Module 2 in the context of severe-weather danger; sudden wind-shift hazard. |
| **Layout** | |
| **Sources** | |

### 5.3 Waterspouts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | How waterspouts form and how to recognize and avoid them. |
| **Layout** | |
| **Sources** | |

### 5.4 Tropical cyclones

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Structure of a tropical cyclone and why it is so severe compared to other systems covered so far. |
| **Layout** | |
| **Sources** | |

### 5.5 Tracking tropical cyclones

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | How to follow official advisories and interpret the cone of uncertainty for voyage planning. |
| **Layout** | |
| **Sources** | |

### 5.6 Fog

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Radiation vs. advection fog, the hazards each poses to navigation, and avoidance/response procedure. |
| **Layout** | |
| **Sources** | |

### 5.7 Beaufort scale

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Beaufort scale table linking wind speed to sea state, as a practical shared reference. |
| **Layout** | |
| **Sources** | |

### 5.8 Wave generation & fetch

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Relationship between wind speed, duration, and fetch, and how those combine to determine wave height. |
| **Layout** | |
| **Sources** | |

---

## Module 6 — Reading synoptic charts (8 slides)

### 6.1 What is a synoptic chart

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Purpose of a synoptic chart and where sailors can find them (official sources). |
| **Layout** | |
| **Sources** | |

### 6.2 Isobars & pressure patterns on a chart

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | How pressure patterns appear as isobars on a synoptic chart, connecting back to Module 2's isobar-reading content. |
| **Layout** | |
| **Sources** | |

### 6.3 The station model

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Explanation of station-model symbols as used on synoptic charts. |
| **Layout** | |
| **Sources** | |

### 6.4 Fronts on a chart

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Standard symbols for cold, warm, occluded, and stationary fronts as drawn on a chart. |
| **Layout** | |
| **Sources** | |

### 6.5 Identifying highs/lows and associated weather

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | How to spot high- and low-pressure centers on a chart and infer the weather likely associated with them. |
| **Layout** | |
| **Sources** | |

### 6.6 Pressure tendency

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Reading the barometer trend on board alongside the synoptic chart to anticipate short-term changes. |
| **Layout** | |
| **Sources** | |

### 6.7 Guided example — annotated chart walkthrough

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Step-by-step walkthrough annotating a real synoptic chart, applying everything covered earlier in the module. |
| **Layout** | |
| **Sources** | |

### 6.8 Practice — chart-reading exercise

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Short in-class exercise or quiz slide having students read a chart themselves before moving to forecast models. |
| **Layout** | |
| **Sources** | |

---

## Module 7 — Forecast models & uncertainty (6 slides)

### 7.1 How forecasts are made

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | High-level overview of the forecasting pipeline: observations → numerical model → output, without going into NWP internals. |
| **Layout** | |
| **Sources** | `sources/figures/nwp-domain-resolution.jpg` |

### 7.2 Forecast horizon & skill decay

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Why forecast reliability decreases with lead time — day 1 vs. day 10 skill comparison. |
| **Layout** | |
| **Sources** | |

### 7.3 Deterministic vs. ensemble forecasts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Difference between a single deterministic forecast and an ensemble; introduces the concept of ensemble spread. |
| **Layout** | |
| **Sources** | |

### 7.4 Reading probabilistic forecasts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | How to interpret percentage-based forecasts and spread visualizations in practice. |
| **Layout** | |
| **Sources** | |

### 7.5 Model resolution & limitations

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Why coarse model resolution can miss local effects (e.g. squalls, local wind funneling) covered earlier in the course. |
| **Layout** | |
| **Sources** | |

### 7.6 When to distrust a forecast

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Practical heuristics for sailors to judge when a forecast is likely unreliable and needs cross-checking. |
| **Layout** | |
| **Sources** | |

---

## Module 8 — Practical forecast consultation (8 slides)

### 8.1 Sources of marine forecasts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Overview of where marine forecasts come from: official meteorological services vs. commercial/app-based sources. |
| **Layout** | |
| **Sources** | |

### 8.2 GRIB files

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | What a GRIB file is and how routing software consumes it to generate forecasts and routes. |
| **Layout** | |
| **Sources** | |

### 8.3 Routing apps

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Walkthrough/comparison of common routing apps (Windy, PredictWind, zyGrib) and what each is best used for. |
| **Layout** | |
| **Sources** | |

### 8.4 Official marine bulletins

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Format and content of a national meteorological service's official marine-forecast bulletin. |
| **Layout** | |
| **Sources** | |

### 8.5 NAVTEX

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | What NAVTEX is and how to use it to receive forecasts offshore. |
| **Layout** | |
| **Sources** | |

### 8.6 VHF weather broadcasts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Relevant VHF channels, broadcast schedule, and how to listen for weather updates. |
| **Layout** | |
| **Sources** | |

### 8.7 Coastal vs. offshore forecasts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Differences in detail, granularity, and reliability between coastal and offshore marine forecasts. |
| **Layout** | |
| **Sources** | |

### 8.8 Verifying forecasts

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Using buoy/station observations and ship reports to sanity-check a forecast against real conditions. |
| **Layout** | |
| **Sources** | |

---

## Module 9 — Voyage-planning case study (6 slides)

### 9.1 Scenario setup

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Introduce a hypothetical passage (route and dates) that the rest of the module will work through as a running example. |
| **Layout** | |
| **Sources** | |

### 9.2 Gathering the forecast

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Applying Module 8's tools to the scenario: combining GRIB data, an official bulletin, and a synoptic chart. |
| **Layout** | |
| **Sources** | |

### 9.3 Cross-checking with the synoptic chart and model uncertainty

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Applying Module 6/7 content: verifying the gathered forecast against the synoptic chart and considering ensemble/model uncertainty. |
| **Layout** | |
| **Sources** | |

### 9.4 Identifying risk

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Spotting scenario-specific risks: squalls, an approaching front, wind-against-tide conditions, etc. |
| **Layout** | |
| **Sources** | |

### 9.5 Go/no-go decision

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Worked reasoning process arriving at a go/no-go decision for the scenario passage. |
| **Layout** | |
| **Sources** | |

### 9.6 Decision checklist

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | A reusable, generalized checklist distilled from the case study that students can apply to their own passage planning. |
| **Layout** | |
| **Sources** | |

---

## Module 10 — Wrap-up & resources (3 slides)

### 10.1 Summary

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | One-line key takeaway per module, recapping the full course. |
| **Layout** | |
| **Sources** | |

### 10.2 Further reading & resources

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Pointers to the Petterssen/Skok reference texts, recommended forecasting apps, and official meteorological services. |
| **Layout** | |
| **Sources** | |

### 10.3 Thank you / Q&A

| Category | Entry |
|---|---|
| **Title** | |
| **Subtitle** | |
| **Content** | Closing slide, invitation for questions. |
| **Layout** | |
| **Sources** | |
