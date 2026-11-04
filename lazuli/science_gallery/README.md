# Lazuli science gallery

Eleven science-case notebooks that ask one question each of a Lazuli instrument and answer it with
a hero figure. They started life in `lazuli/esc/` but span all three instruments; the hands-on
tutorials for each instrument are in `lazuli/ifs/tutorial/`, `lazuli/wcc/tutorial/` and
`lazuli/esc/tutorial/`. Each notebook opens with a prompt to try in Jupyter AI.

| notebook | instrument | package | question |
|---|---|---|---|
| [01](01_k2-18b_trappist-1e_atmospheres.ipynb) | IFS | `lazuli_exo` | How many transits to detect an atmosphere on K2-18 b and TRAPPIST-1 e? |
| [02](02_atmosphere_survey_ranking.ipynb) | IFS | `lazuli_exo` | Which known transiting planets give the biggest atmospheric signal per transit? |
| [03](03_stellar_contamination.ipynb) | IFS | `lazuli_exo` | Can unocculted spots or faculae on an M dwarf fake or hide an atmosphere? |
| [04](04_sn_ia_redshift_reach.ipynb) | IFS | `slicersim` | Out to what redshift is a classification-quality SN Ia spectrum possible in an hour? |
| [05](05_kilonova_followup.ipynb) | IFS | `slicersim` | For how many days can a kilonova at 40 and 200 Mpc be followed spectroscopically? |
| [06](06_emission_line_galaxies.ipynb) | IFS | `slicersim` | What is the faintest H-alpha and [O III] line flux detectable at z = 1 in an hour? |
| [07](07_bright_limits_and_calibration.ipynb) | IFS | `slicersim` | What is the brightest star the IFS can observe, and how fast does it calibrate on CalSpec standards? |
| [08](08_fast_transient_depth.ipynb) | WCC | `wcc_etc` | How deep does the WCC reach in 1, 5 and 30 minutes, and can it follow a kilonova's colour? |
| [09](09_tde_in_galaxy_nuclei.ipynb) | WCC | `wcc_etc` | Can the WCC detect a faint nuclear transient on a bright bulge? |
| [10](10_precision_transit_photometry.ipynb) | WCC | `wcc_etc` | How precise is WCC photometry on bright stars, and could it catch an Earth transiting an M dwarf? |
| [11](11_crowded_field_photometry.ipynb) | WCC | `wcc_sim` + `wcc_phot` | How does crowding in the M4 core limit WCC photometric precision? |

The two ESC science cases (reflected-light RV giants, exozodi tolerance) are in
`lazuli/esc/tutorial/backup/`, where they seed the ESC exercises.

`gaia_cache/` holds the M4 field for notebook 11; `thumbs/` receives the hero figures.
