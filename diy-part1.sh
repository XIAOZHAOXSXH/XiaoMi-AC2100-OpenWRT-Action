#!/bin/bash
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# 1. 取消注释 Lede 自带的 helloworld 源 (里面包含一些常用依赖，建议开启)
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 2. 添加 kenzok8 的第三方源
# 这个源是目前 OpenWrt 社区最全的源之一，包含 EasyTier 和优化过的 OpenVPN
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
