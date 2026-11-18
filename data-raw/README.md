# data-raw

Raw downloads, exactly as received. **Do not edit these files** — all cleaning happens in `code/`.

---

## `savant_pitchers_2015_2026.csv`

- **Source:** Baseball Savant Custom Leaderboard — https://baseballsavant.mlb.com/leaderboard/custom
- **Settings:** Player type = Pitcher; Years = 2015–2026; minimum = 1; then *Download CSV*.
- **Rows:** 9,355 pitcher-seasons (one row per pitcher per season).
- **Key ID:** `player_id` = MLBAM ID.
- **Used for:** fastball velocity (treatment) and Statcast performance outcomes.

| Column | Meaning |
|---|---|
| `last_name, first_name`, `player_id`, `year` | identifiers |
| `player_age` | age |
| `p_formatted_ip`, `pa`, `n` | innings (e.g. `194.2` = 194⅔), batters faced, pitches |
| `k_percent`, `bb_percent` | strikeout / walk rate (%) |
| `p_era`, `woba`, `xwoba` | ERA, wOBA allowed, expected wOBA allowed |
| `whiff_percent`, `swing_percent` | whiffs per swing, swings per pitch (%) |
| `hard_hit_percent`, `barrel_batted_rate`, `sweet_spot_percent`, `avg_best_speed`, `avg_hyper_speed` | contact quality allowed |
| `n_ff_formatted` | four-seam usage (%) |
| `ff_avg_speed` | **average four-seam velocity (mph)** — missing (~6%) for pitchers who throw no four-seamer |
| `fastball_avg_speed` | **average velocity of all fastballs (FF/SI/FC)** — fallback velocity measure |

## `bref_value_2015_2025.csv`

- **Source:** Baseball-Reference *Player Value — Pitchers* table, one page per season:
  `https://www.baseball-reference.com/leagues/majors/{YEAR}-value-pitching.shtml`
- **How:** *Share & Export → Get table as CSV*, pasted per season, then stacked with a `season` column added in front.
- **Rows:** 11,054. Pitchers traded mid-season appear once as a combined row (`Team` = `2TM`, `3TM`, …) **and** once per team — keep only the first (combined) row per pitcher-season when cleaning.
- **Key ID:** `Player-additional` = Baseball-Reference ID (e.g. `skenepa01`).
- **Used for:** bWAR, IP, G, GS (starter vs. reliever role).
- **Notes:** `*` after a name = left-handed, `#` = switch. `RA9extras` did not exist before 2020 (blank for 2015–2019). 2020 was a 60-game season.

## `id_crosswalk_2014plus.csv`

- **Source:** Chadwick Bureau register — https://github.com/chadwickbureau/register (`data/people-*.csv`), filtered to players with `mlb_played_last >= 2014`.
- **Rows:** 4,505 players.
- **Used for:** joining Savant (`key_mlbam`) ↔ Baseball-Reference (`key_bbref`) ↔ FanGraphs (`key_fangraphs`); birth dates.

---

## Not yet collected

| Data | Stage | Source |
|---|---|---|
| Injured-list transactions | 2 | MLB Stats API — `https://statsapi.mlb.com/api/v1/transactions` |
| Tommy John surgery list | 2 | Jon Roegele's public TJ list |
| $ per WAR (free agency) | 3 | FanGraphs estimates / Mastroianni et al. (2025) |
| FanGraphs leaderboard (fWAR, FIP) | 1 (optional robustness) | Requires FanGraphs membership for export |
