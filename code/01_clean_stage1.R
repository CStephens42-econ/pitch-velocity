# =============================================================================
# 01_clean_stage1.R
# Stage 1: build the pitcher-season panel with offseason velocity gain.
#
# Inputs  (data-raw/):
#   savant_pitchers_2015_2026.csv   velocity + Statcast outcomes (MLBAM ID)
#   bref_value_2015_2025.csv        bWAR, IP, G, GS              (BBRef ID)
#   id_crosswalk_2014plus.csv       MLBAM <-> BBRef IDs
#
# Output  (data-clean/):
#   stage1_panel.csv                one row per pitcher-season
#
# Planned steps:
#   1. Savant: clean names, convert IP ("194.2" -> 194.667)
#   2. BBRef: keep the combined row for traded pitchers; strip * / # from names
#   3. Join BBRef -> crosswalk -> Savant on MLBAM ID + season
#   4. Velocity: four-seam velo, falling back to all-fastball velo
#   5. Lag each pitcher's previous season; velo_gain = velo_t - velo_{t-1}
#   6. Controls: age, starter flag (GS/G >= 0.5), role change, 2020 dummy
#   7. Sample flag: >= 20 IP in both seasons
# =============================================================================

source(here::here("code", "00_setup.R"))

# TODO
