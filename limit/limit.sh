#!/bin/bash
# //====================================================
# //  Elvaretta Store - Since 2023
# //====================================================
# //  System Request : Debian 9+/Ubuntu 18.04+/20+
# //  Author         : budi_spielberg
# //  Develop        : Elvaretta Store
# //  email          : budi.tejosari@gmail.com
# //  telegram       : t.me/budi_spielberg
# //====================================================

REPO="https://raw.githubusercontent.com/eRoYeTxSa2luNYrckEvVG5NFdUVnQ3WbMzElZMn/free/main/"
clear
wget -q -O /etc/systemd/system/limitvmess.service "${REPO}limit/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${REPO}limit/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${REPO}limit/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "${REPO}limit/limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
wget -q -O /etc/xray/limit.vmess "${REPO}limit/vmess" >/dev/null 2>&1
wget -q -O /etc/xray/limit.vless "${REPO}limit/vless" >/dev/null 2>&1
wget -q -O /etc/xray/limit.trojan "${REPO}limit/trojan" >/dev/null 2>&1
wget -q -O /etc/xray/limit.shadowsocks "${REPO}limit/shadowsocks" >/dev/null 2>&1
chmod +x /etc/xray/limit.vmess
chmod +x /etc/xray/limit.vless
chmod +x /etc/xray/limit.trojan
chmod +x /etc/xray/limit.shadowsocks
systemctl daemon-reload
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
# systemctl start limitvmess
# systemctl start limitvless
# systemctl start limittrojan
# systemctl start limitshadowsocks
# systemctl restart limitvmess
# systemctl restart limitvless
# systemctl restart limittrojan
# systemctl restart limitshadowsocks
