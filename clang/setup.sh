#!/usr/bin/env bash

bring_from_mirror () {
  LLVM_MIRROR="https://github.com/llvm-mirror/"

  git clone ${LLVM_MIRROR}${1}.git
}

setup_clang () {
  LLVM_DEV_DIR=$HOME/tools/
  LLVM_DIR=$LLVM_DEV_DIR/llvm
  LLVM_TOOLS_DIR=$LLVM_DIR/tools/
  LLVM_PROJECTS_DIR=$LLVM_DIR/projects/
  CLANG_TOOLS_DIR=$LLVM_TOOLS_DIR/clang/tools/

  mkdir -p $LLVM_DEV_DIR
  cd $LLVM_DEV_DIR

  # checkout LLVM
  bring_from_mirror llvm

  # checkout Clang
  cd $LLVM_TOOLS_DIR
  bring_from_mirror clang

  # checkout Clang Extra Tools
  cd $CLANG_TOOLS_DIR
  bring_from_mirror clang-tools-extra

  # checkout Compiler-RT
  cd $LLVM_PROJECTS_DIR
  bring_from_mirror compiler-rt

  # build LLVM and Clang
  mkdir $LLVM_DIR/build
  cd $LLVM_DIR/build
  ../configure --enable-optimized --enable-targets=x86_64
  make -j4

}

if type git &>/dev/null; then
  setup_clang
else
  echo -e "Git is not installed.\nTry apt-get install/pacman -S (git git-core)"
  exit 1
fi
