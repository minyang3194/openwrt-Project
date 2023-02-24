#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# 替换
rm -rf ./feeds/packages/lang/golang
svn export https://github.com/sbwml/packages_lang_golang/branches/19.x feeds/packages/lang/golang
rm -rf feeds/packages/libs/libcap
svn co https://github.com/openwrt/packages/branches/openwrt-21.02/libs/libcap/ feeds/packages/libs/libcap
rm -rf feeds/packages/net/miniupnpd
svn co https://github.com/coolsnowwolf/packages/trunk/net/miniupnpd feeds/packages/net/miniupnpd
rm -rf feeds/luci/applications/luci-app-upnp
svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-upnp feeds/luci/applications/luci-app-upnp
