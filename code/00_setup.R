# =============================================================================
# 00_setup.R
# Install (first run only) and load packages used across the project.
# =============================================================================

pkgs <- c(
  "tidyverse",  # dplyr, readr, tidyr, ggplot2, stringr
  "here",       # project-relative file paths
  "janitor",    # clean_names()
  "fixest",     # fixed-effects regressions (feols)
  "survival",   # time-to-injury models (Stage 2)
  "modelsummary" # regression tables
)

to_install <- setdiff(pkgs, rownames(installed.packages()))
if (length(to_install) > 0) install.packages(to_install)

invisible(lapply(pkgs, library, character.only = TRUE))
