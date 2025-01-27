# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)

PKG_NAME="libaacs"
PKG_VERSION="0.11.0"
PKG_SHA256="6d884381fbb659e2a565eba91e72499778635975e4b3d6fd94ab364a25965387"
PKG_LICENSE="GPL"
PKG_SITE="http://www.videolan.org/developers/libaacs.html"
PKG_URL="https://mirror.math.princeton.edu/pub/vlc/libaacs/0.11.0/libaacs-0.11.0.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libgcrypt"
PKG_LONGDESC="libaacs is a research project to implement the Advanced Access Content System specification."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--disable-werror \
                           --disable-extra-warnings \
                           --disable-optimizations \
                           --with-libgcrypt-prefix=${SYSROOT_PREFIX}/usr \
                           --with-libgpg-error-prefix=${SYSROOT_PREFIX}/usr \
                           --with-gnu-ld"

post_makeinstall_target() {
  mkdir -p ${INSTALL}/usr/config/aacs
    cp -P ../KEYDB.cfg ${INSTALL}/usr/config/aacs
}
