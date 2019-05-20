#!/bin/bash -e

rm -rf build
mkdir build

pushd build
#cmake -DLLVM_TARGETS_TO_BUILD=X86 -DCMAKE_BUILD_TYPE=MinSizeRel ../llvm-7.0.0.src
  cmake -DLLVM_TARGETS_TO_BUILD=X86 -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_INCLUDE_TESTS=OFF ../llvm-7.0.0.src
  make -j`nproc`
popd