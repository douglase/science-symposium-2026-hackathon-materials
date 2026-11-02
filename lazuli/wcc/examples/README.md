# WCC examples

Stand-alone worked examples built on `wcc_sim`, beyond the numbered [tutorial](../tutorial/README.md).
Each notebook starts with a Parameters cell; change that first, then Restart Kernel and Run All.

| notebook | question |
|---|---|
| [`m101_all_filters_snr500.ipynb`](m101_all_filters_snr500.ipynb) | What does the centre of M101 look like through the WCC in every imaging filter, and how long an exposure (and how many reads) does SNR = 500 in the brightest pixel take in each? Drapes a Legacy Survey cutout with `SkyImageComponent` / `WCCObservation`, solves the per-pixel noise model for the exposure time, and writes one FITS product per filter. |

Requirements: `wcc_sim` with its image extra (`pip install 'wcc-sim[image]'` for `reproject`) and, on first
run, network access to the Legacy Survey cutout service; downloaded cutouts are cached under `m101_wcc/`.
