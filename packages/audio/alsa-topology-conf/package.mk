# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="alsa-topology-conf"
PKG_VERSION="1.2.4"
PKG_SHA256="55e0e6e42eca4cc7656c257af2440cdc65b83689dca49fc60ca0194db079ed07"
PKG_LICENSE="BSD-3c"
PKG_SITE="http://www.alsa-project.org/"
PKG_URL="https://src.fedoraproject.org/repo/pkgs/alsa-lib/alsa-topology-conf-1.2.4.tar.bz2/sha512/e5b367a23f42ed2c2a83f3dd9df264b4e054f5ba7c4be98520418598f0b06a11627498a8a6ef943522b209951645f83bbbbfb32db7c9c8260aa5db08358970cb/alsa-topology-conf-1.2.4.tar.bz2"
PKG_LONGDESC="ALSA topology configuration files"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/share/alsa/
  cp -PR ${PKG_BUILD}/topology ${INSTALL}/usr/share/alsa/
}
