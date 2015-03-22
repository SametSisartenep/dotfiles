#!/usr/bin/env bash

setup_clang () {
  LLVM_DEV_DIR=$HOME/tools/
  LLVM_DIR=$LLVM_DEV_DIR/llvm
  LLVM_TOOLS_DIR=$LLVM_DIR/tools/
  LLVM_PROJECTS_DIR=$LLVM_DIR/projects/
  CLANG_TOOLS_DIR=$LLVM_TOOLS_DIR/clang/tools/

  mkdir -p $LLVM_DEV_DIR
  cd $LLVM_DEV_DIR

  # checkout LLVM
  svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm

  # checkout Clang
  cd $LLVM_TOOLS_DIR
  svn co http://llvm.org/svn/llvm-project/cfe/trunk clang

  # checkout Extra Clang Tools
  cd $CLANG_TOOLS_DIR
  svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra

  # checkout Compiler-RT
  cd $LLVM_PROJECTS_DIR
  svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt

  # build LLVM and Clang
  mkdir $LLVM_DIR/build
  cd $LLVM_DIR/build
  ../configure --enable-optimized --enable-targets=x86_64
  make -j4

}

if type svn &>/dev/null; then
  setup_clang
else
  echo "SVN is not installed."
  exit 1
fi
