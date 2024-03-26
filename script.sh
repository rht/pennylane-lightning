#!/usr/bin/env bash

pip install -r requirements.txt
PL_BACKEND="lightning_qubit" pip install -e . -vv
export CUQUANTUM_SDK=$(python -c "import site; print( f'{site.getsitepackages()[0]}/cuquantum/lib')")
echo "$CUQUANTUM_SDK"
PL_BACKEND="lightning_gpu" python -m pip install -e .
