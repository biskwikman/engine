#!/bin/bash
# Build script for testbed

# Need to get list of all .c files here
cFilenames="$(find . -name '*.c')" 

assembly=testbed
compilerFlags=-g
includeFlags=-Isrc -I$VULKAN_SDK/include
linkerFlags=-L../bin/ -lengine.lib
defines=-D_DEBUG -DKEXPORT -D_CRT_SECURE_NO_WARNINGS

echo "Building $assembly"
clang $cFilenames &compilerFlags -o ../bin/$assembly $defines $includeFlags $linkerFlags
