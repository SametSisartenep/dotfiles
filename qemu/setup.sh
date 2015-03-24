#!/usr/bin/env bash

wget http://wiki.qemu-project.org/download/qemu-2.3.0-rc0.tar.bz2

tar -xvf *.tar.*
rm -rfv *.tar.*

cd qemu* && make -j4 && sudo make install
