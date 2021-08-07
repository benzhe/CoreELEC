# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libudfread"
PKG_VERSION="1.1.1"
PKG_SHA256="5d237ff81caa46856dc75b8ddd1f17c0e262eea08ef59a466cc850585f1680dc"
PKG_LICENSE="LGPLv2.1"
PKG_SITE="https://code.videolan.org/videolan/libudfread"
PKG_URL="http://mirrors.sohu.com/raspbian/raspbian/pool/main/libu/libudfread/libudfread_1.1.1.orig.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="UDF reader"
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"
