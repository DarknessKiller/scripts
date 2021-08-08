#!/bin/bash
# The Rule is fairly simple execute this script.
# pick below according to your needs
# https://github.com/AOS-Unofficial/platform_build_soong
# https://github.com/AOS-Unofficial/platform_build

curdir=$(pwd)

function checkout() {
	git restore .
	git clean -df
	git reset --hard HEAD
	git fetch "$1" "$2" && git checkout FETCH_HEAD
}

cd $curdir/art
checkout https://github.com/AOS-Unofficial/platform_art eleven

cd $curdir/bionic
checkout https://github.com/AOS-Unofficial/platform_bionic eleven

rm -rf $curdir/external/sqlite
git clone --depth=1 https://github.com/AOS-Unofficial/platform_external_sqlite -b 11.0 $curdir/external/sqlite

rm -rf $curdir/external/cpu_features
git clone --depth=1 https://github.com/AOS-Unofficial/platform_external_cpu_features -b 11.0 $curdir/external/cpu_features

rm -rf $curdir/external/openssh
git clone --depth=1 https://github.com/AOS-Unofficial/android_external_openssh -b rvc $curdir/external/openssh
