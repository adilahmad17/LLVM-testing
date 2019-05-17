#!/bin/bash -e

pushd build
cmake -DLLVM_TARGETS_TO_BUILD=X86 -DCMAKE_BUILD_TYPE=MinSizeRel ../llvm-7.0.0.src
make -j`nproc`
popd