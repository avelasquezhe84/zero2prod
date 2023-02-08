#!/bin/bash

git clone https://github.com/rui314/mold.git
mkdir mold/build
cd mold/build
git checkout v1.10.1
../install-build-deps.sh
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=c++ ..
cmake --build . -j $(nproc)
cmake --install .