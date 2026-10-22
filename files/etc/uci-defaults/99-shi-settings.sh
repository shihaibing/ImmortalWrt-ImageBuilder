#!/bin/sh

# 向 dhcp 配置中追加一条静态地址绑定
uci add dhcp host
uci set dhcp.@host[-1].name='MiWiFi-RD15'
uci set dhcp.@host[-1].mac='CC:D8:43:1D:D9:FE'
uci set dhcp.@host[-1].ip='192.168.100.211'
uci commit dhcp

exit 0
