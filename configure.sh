#!/usr/bin/env bash

mkdir build

OPTIONS="-D BUILD_DEPS=ON \
         -D BUILD_EXAMPLES=OFF \
         -D BUILD_SAMPLES=OFF \

         -D USE_COINOR=OFF \
         -D USE_HIGHS=OFF \
         -D USE_PDLP=OFF \
         -D USE_SCIP=OFF"
         
cmake -S . -B build $OPTIONS
