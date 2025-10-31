#!/bin/bash

. /opt/conda/etc/profile.d/conda.sh && conda activate aqme

export PATH="$CONDA_PREFIX/bin:$PATH"
export LD_LIBRARY_PATH="$CONDA_PREFIX/lib:$LD_LIBRARY_PATH"
export PYTHONPATH="$CONDA_PREFIX/lib/python3.10/site-packages:$PYTHONPATH"

exec "$@"
