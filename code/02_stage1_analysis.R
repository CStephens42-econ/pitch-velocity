# =============================================================================
# 02_stage1_analysis.R
# Stage 1: regress change in performance on offseason velocity gain.
#
# Input:   data-clean/stage1_panel.csv
# Outputs: output/tables/, output/figures/
#
# Planned models:
#   d_outcome ~ velo_gain + age + starter + role_change | season
#   outcomes: bWAR (and per 100 IP), K%, BB%, xwOBA, ERA
#   robustness: drop 2020, starters vs. relievers, four-seam vs. all-fastball
# =============================================================================

source(here::here("code", "00_setup.R"))

# TODO
