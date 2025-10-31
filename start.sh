#!/bin/bash
. /opt/conda/etc/profile.d/conda.sh

export PATH="/opt/conda/envs/aqme/bin:$PATH"
export LD_LIBRARY_PATH="/opt/conda/envs/aqme/lib:$LD_LIBRARY_PATH"
export CONDA_PREFIX="/opt/conda/envs/aqme"
export PYTHONPATH="/opt/conda/envs/aqme/lib/python3.10/site-packages:$PYTHONPATH"

if [ $# -eq 0 ]; then
    exec conda run -n aqme bash
fi

exec conda run -n aqme --no-capture-output "$@"
