#!/bin/sh
make init
cd external
make -f Android.mk build-local-hack
ndk-build
ndk-build
make -f Android.mk copy-libs-hack
cd ..
make
