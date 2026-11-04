#!/usr/bin/env bash
# Build a Python environment that runs the Lazuli WCC and IFS notebooks outside
# the symposium JupyterHub (where these packages are already installed), e.g.
# lazuli/science_gallery/12_he10830_ifs_vs_wcc.ipynb.
#
# Usage (from the repository root):
#   bash lazuli/install_lazuli_env.sh [ENV_DIR]        # default ENV_DIR: .venv
#   ENV_DIR/bin/jupyter lab                            # or: source ENV_DIR/bin/activate
#
# Installs
#   - wcc_etc and slicersim from GitHub, pinned to the commits notebook 12 was run with,
#   - lazuli-astrosim-data and lazuli-exo (a wcc_etc dependency) from PyPI,
#   - JupyterLab, ipykernel and nbconvert.
# Override a source with WCC_ETC_SPEC=... or SLICERSIM_SPEC=... (any pip requirement,
# e.g. a local checkout path), and the interpreter with PYTHON=... (>= 3.11).
#
# Needs git and network access to github.com and pypi.org. Off the hub there is no
# ~/s3 mount: sncosmo downloads its bandpasses on first use instead.
set -euo pipefail

ENV_DIR="${1:-.venv}"
PYTHON="${PYTHON:-python3}"
WCC_ETC_SPEC="${WCC_ETC_SPEC:-git+https://github.com/schmidt-observatories/wcc-etc@f4afb837d89b8bf89b03e3618a38257e8711a202}"
SLICERSIM_SPEC="${SLICERSIM_SPEC:-git+https://github.com/MickaelRigault/slicersim@335763ec48873722037227e6171d7120d6d5abf5}"

"$PYTHON" -c 'import sys; sys.exit(0 if sys.version_info >= (3, 11) else "Python >= 3.11 is needed (wcc_etc)")'

echo "==> creating $ENV_DIR"
"$PYTHON" -m venv "$ENV_DIR"
"$ENV_DIR/bin/python" -m pip install --quiet --upgrade pip

echo "==> installing wcc_etc, slicersim, lazuli-astrosim-data and Jupyter"
"$ENV_DIR/bin/python" -m pip install --quiet \
    lazuli-astrosim-data "$WCC_ETC_SPEC" "$SLICERSIM_SPEC" \
    jupyterlab ipykernel nbconvert

"$ENV_DIR/bin/python" - <<'EOF'
import lazuli_astrosim_data, slicersim, wcc_etc
print(f"==> ok: slicersim {slicersim.__version__}, wcc_etc {wcc_etc.__version__}, "
      f"lazuli_astrosim_data {getattr(lazuli_astrosim_data, '__version__', '?')}")
EOF
echo "==> run the notebooks with: $ENV_DIR/bin/jupyter lab"
