# pitch-velocity

**The Value of an Additional Mile-per-Hour in Pitch Velocity**
Econ 442 — Christian Stephens, Brice Wildemuth, Jonathan Gitlin

Is adding a mile per hour to a pitcher's fastball worth it, given the higher injury risk that comes with it?

## Project stages

| Stage | Question | Status |
|---|---|---|
| 1 | Effect of +1 mph of fastball velocity on pitcher performance | Raw data collected |
| 2 | Effect of +1 mph on arm-injury risk (time to first arm injury) | Not started |
| 3 | Net dollar value of +1 mph (performance gain vs. injury cost, $/WAR) | Not started |

## Repository layout

```
pitch-velocity/
├── README.md
├── pitch-velocity.Rproj      # open this in RStudio; paths are relative to here
├── code/                     # R scripts, run in numeric order
│   ├── 00_setup.R
│   ├── 01_clean_stage1.R
│   ├── 02_stage1_analysis.R
│   ├── 03_clean_stage2.R
│   ├── 04_stage2_analysis.R
│   └── 05_stage3_value.R
├── data-raw/                 # untouched downloads — never edit by hand
├── data-clean/               # analysis-ready data produced by code/
├── output/
│   ├── figures/
│   └── tables/
└── docs/                     # proposal, write-ups, references
```

## Data

See [`data-raw/README.md`](data-raw/README.md) for every source, how it was downloaded, and what each column is used for.

| File | Source | Coverage |
|---|---|---|
| `savant_pitchers_2015_2026.csv` | Baseball Savant custom leaderboard | 2015–2026 |
| `bref_value_2015_2025.csv` | Baseball-Reference Player Value — Pitchers | 2015–2025 |
| `id_crosswalk_2014plus.csv` | Chadwick Bureau register | Players active 2014+ |

## Reproducing

1. Open `pitch-velocity.Rproj` in RStudio.
2. Run `code/00_setup.R` once to install packages.
3. Run the remaining scripts in order.

## References

- Chalmers, P. N., et al. (2016). Fastball pitch velocity helps predict ulnar collateral ligament reconstruction in Major League Baseball pitchers. *American Journal of Sports Medicine*, 44(8), 2130–2135. https://doi.org/10.1177/0363546516634305
- Mastroianni, M. A., et al. (2025). A modern advanced analytic approach to cost and performance loss analysis of ulnar collateral ligament surgery to Major League Baseball teams. *JSES Reviews, Reports, and Techniques*, 6(2), 100651. https://doi.org/10.1016/j.xrrt.2025.100651
