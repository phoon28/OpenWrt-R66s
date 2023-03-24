#!/bin/bash
# ==============================================================
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# ===============================================================

#修改默认IP
# sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate   # 定制默认IP

# 移除重复软件包
rm -rf feeds/luci/themes/luci-theme-argon

# Themes
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 添加额外软件包


# 科学上网插件


# 科学上网插件依赖

# 修复缺少nfs_ssc.ko的内核模块
# cp -f $GITHUB_WORKSPACE /general/003-add-module_supported_device-macro.patch target/linux/generic/backport-5.15
# cp -f $GITHUB_WORKSPACE /general/netdevices.mk package/kernel/linux/modules
