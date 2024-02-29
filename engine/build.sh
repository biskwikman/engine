#!/bin/bash

# Need to get list of all .c files here
cFilenames=

assembly=engine
compilerFlags=-g -shared -Wvarargs -Wall -Werror
includeFlags=-Isrc -I$VULKAN_SDK/include
linkerFlags=-luser32 -lvulkan1 -L$VULKAN_SDK/lib
defines=-D_DEBUG -DKEXPORT -D_CRT_SECURE_NO_WARNINGS

echo "Building $assembly"
clang $cFilenames &compilerFlags -o ../bin/$assembly.so $defines $includeFlags $linkerFlags
