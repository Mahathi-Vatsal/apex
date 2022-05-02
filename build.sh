#!/bin/bash

export MAX_JOBS=64
pip uninstall -y apex
rm -rf build/
python3.7 setup.py clean --all
python3.7 setup.py install --cpp_ext --cuda_ext --bnp 2>&1 | tee build.log
