\# 📐 Laboratório de Monitoramento de Rede Física: Arquitetura



Este documento detalha a topologia e o fluxo de comunicação implementados no laboratório de monitoramento da rede física.



\## 🗺️ Topologia e Fluxo de Dados



1\. \*\*Borda e Roteamento (pfSense):\*\*

&#x20;  \* O pfSense atua como o firewall de borda principal da infraestrutura.

&#x20;  \* Gerencia regras de NAT, isolamento de subnets e liberação segura de tráfego entre a rede física e os ambientes virtualizados.



2\. \*\*Coleta de Métricas (Zabbix Server):\*\*

&#x20;  \* O Zabbix centraliza a varredura e a coleta de dados de hardwares de rede e endpoints locais.

&#x20;  \* Utiliza \*\*SNMP\*\* para roteadores e consoles (PS5) e \*\*Zabbix Agent\*\* para hosts Windows/Linux.



3\. \*\*Visualização (Grafana):\*\*

&#x20;  \* Conecta-se diretamente ao Zabbix como \*Data Source\* (Fonte de Dados).

&#x20;  \* Renderiza painéis customizados de tráfego de rede, consumo de recursos e telemetria de energia (UPS/Nobreak).



\## 🔒 Portas e Protocolos de Comunicação

\* \*\*10051 (TCP):\*\* Zabbix Agent / Checagens ativas.

\* \*\*161 / 162 (UDP):\*\* Protocolo SNMP para dispositivos de rede e monitoramento de nobreaks.

\* \*\*3000 (TCP):\*\* Acesso à Interface Web do Grafana.

