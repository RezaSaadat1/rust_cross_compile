#!/bin/bash
# export CC_armv7-unknown-linux-gnueabihf=arm-linux-gnueabihf-gcc
# export CXX_armv7-unknown-linux-gnueabihf=arm-linux-gnueabihf-g++
# export AR_armv7-unknown-linux-gnueabihf=arm-linux-gnueabihf-ar
# export LD_armv7-unknown-linux-gnueabihf=arm-linux-gnueabihf-ld

# SDK_DIR="$1"
# . ${SDK_DIR}

export PKG_CONFIG_PATH="/usr/lib/arm-linux-gnueabihf/pkgconfig"
export PKG_CONFIG_ALLOW_CROSS="true"

export CARGO_TARGET_ARMV7_UNKNOWN_LINUX_GNUEABIHF_LINKER=arm-linux-gnueabihf-gcc
# export CC_armv7-unknown-linux-gnueabihf=arm-linux-gnueabihf-gcc
export TARGET=armv7-unknown-linux-gnueabihf


cargo build --target $TARGET 

cp target/armv7-unknown-linux-gnueabihf/debug/rust_firmware .