#!/usr/bin/env bash

# Add the module map
echo "module ORTools {
    header \"ortools/init/init.h\"
    export *
}" > ./install/include/module.modulemap

# Create the xcframework
xcodebuild -create-xcframework \
    -library ./install/lib/libortools.9.11.dylib \
    -headers ./install/include/ \
    -output ./ORTools.xcframework

# Add missing googletest headers
cp -a ./build/_deps/googletest-src/googletest/include/gtest ORTools.xcframework/*/Headers/
