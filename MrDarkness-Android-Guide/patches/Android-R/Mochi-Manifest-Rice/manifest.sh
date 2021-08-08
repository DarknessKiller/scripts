#!/bin/bash

curdir=$(pwd)

function checkout() {
	git restore .
	git clean -df
	git reset --hard HEAD
	git fetch "$1" "$2" && git checkout FETCH_HEAD
}

cd $curdir/art
checkout https://github.com/Jebaitedneko/platform_art eleven

cd $curdir/bionic
checkout https://github.com/Jebaitedneko/platform_bionic eleven

cd $curdir/build/make
checkout https://github.com/Jebaitedneko/platform_build eleven

cd $curdir/build/soong
checkout https://github.com/Jebaitedneko/platform_build_soong eleven

rm -rf $curdir/external/zlib
git clone --depth=1 https://github.com/Jebaitedneko/android_external_zlib-ng -b rvc $curdir/external/zlib

rm -rf $curdir/external/sqlite
git clone --depth=1 https://github.com/Jebaitedneko/platform_external_sqlite -b 11.0 $curdir/external/sqlite

rm -rf $curdir/external/cpu_features
git clone --depth=1 https://github.com/Jebaitedneko/platform_external_cpu_features -b 11.0 $curdir/external/cpu_features

rm -rf $curdir/external/openssh
git clone --depth=1 https://github.com/Jebaitedneko/android_external_openssh -b rvc $curdir/external/openssh

[ -d "$curdir/external/arm-optimized-routines" ] && rm -rf $curdir/external/arm-optimized-routines
git clone --depth=1 https://github.com/Jebaitedneko/platform_external_arm-optimized-routines -b 11.0 $curdir/external/arm-optimized-routines
