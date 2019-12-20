# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="enet"
PKG_VERSION="55035343622bf64304cd466f85a6cea68f30564a"
PKG_SHA256="a7e5a91ab387a71ff82f551803954bd5bf3c7a6d9cdff550d6d0414d68e21340"
PKG_LICENSE=""
PKG_SITE="https://github.com/cgutman/enet/"
PKG_URL="https://github.com/cgutman/enet/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A network communication layer on top of UDP (User Datagram Protocol)."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"

post_makeinstall_target() {
  rm -r $INSTALL
}
