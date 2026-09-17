#!/bin/bash

# ==========================================
# Network & Monitoring Health Check Script
# Author: Victor Lino
# ==========================================

# Lista de IPs dos hosts monitorados (ajuste conforme o seu lab)
HOSTS=("192.168.1.1" "192.168.15.55" "192.168.15.58" "192.168.15.146")

echo "🔍 Iniciando verificação de saúde da rede física e agentes..."
echo "--------------------------------------------------------"

for ip in "${HOSTS[@]}"; do
    echo -n "Testando ping para o IP $ip... "
    if ping -c 1 -w 2 "$ip" > /dev/null 2>&1; then
        echo -e "\e[32m[ONLINE / UP]\e[0m"
    else
        echo -e "\e[31m[OFFLINE / DOWN]\e[0m"
    fi
done

echo "--------------------------------------------------------"
echo "✅ Verificação concluída!"