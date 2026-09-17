# 🚀 Laboratório de Monitoramento e Observabilidade: Rede Física (Zabbix, Grafana & pfSense)

[![Architecture](https://img.shields.io/badge/docs-architecture-blue)](docs/architecture-pt.md)
[![Status](https://img.shields.io/badge/status-active-success)]()

[[🇺🇸 English](README.md)] | [🇧🇷 Português](README-PT.md)

Projeto de laboratório desenvolvido para integrar, monitorar e garantir a observabilidade de uma rede física e seus dispositivos, utilizando uma arquitetura centralizada com **Zabbix**, **Grafana** e **pfSense**. O ambiente simula a infraestrutura de um cenário corporativo real, rodando de forma distribuída entre máquinas virtuais e secundárias e sendo acessado de forma segura a partir da máquina primária.

---

## 📐 Arquitetura e Documentação
Para uma compreensão completa da topologia, fluxo de dados e portas de rede utilizadas neste laboratório, consulte a documentação:
* [English Architecture Documentation](docs/architecture.md)
* [Documentação de Arquitetura em Português](docs/architecture-pt.md)

---

## 🛠️ Tecnologias Utilizadas
* **Zabbix Server:** Coleta centralizada de métricas, monitoramento de disponibilidade (ICMP/Ping), SNMP e agentes ativos.
* **Grafana:** Dashboards customizados e visualização em tempo real (Painéis de Status, Tráfego de Rede, Recursos de Servidores e UPS).
* **pfSense:** Gerenciamento avançado de firewall, regras de roteamento, NAT e segurança na borda entre as redes.
* **Ambiente Virtualizado:** Arquitetura distribuída simulando ambientes de produção.

---

## 📸 Demonstração do Ambiente e Dashboards

### 1. Inventário e Hosts (Zabbix)
Painel central de hosts monitorados na rede física:
![Zabbix Hosts](images/zabbix-hosts-overview.png)

### 2. Visão Geral (Grafana Dashboard)
Painel consolidado com o status geral de disponibilidade dos nós (`UP/DOWN`):
![Grafana Overview](images/grafana-dashboard-overview.png)

### 3. Tráfego de Rede e Perda de Pacotes
Métricas de tráfego (RX/TX) e estabilidade de conexão:
![Grafana Network](images/grafana-network-traffic.png)

### 4. Monitoramento de Servidores (CPU, Memória e Disco)
Acompanhamento de recursos de hardware em tempo real:
![Grafana Servers](images/grafana-servers-resources.png)

### 5. Telemetria de Energia (Nobreak / UPS)
Monitoramento de tensão de entrada/saída, carga da bateria e temperatura:
![Grafana UPS](images/grafana-ups-metrics.png)

### 6. Configurações de Firewall (pfSense)
Regras de segurança configuradas nas interfaces LAN e WAN para tráfego e acesso remoto:
* **LAN Rules:** ![pfSense LAN](images/pfsense-lan-rules.png)
* **WAN Rules:** ![pfSense WAN](images/pfsense-wan-rules.png)

---

## ⚙️ Principais Configurações Realizadas
* **Regras de Firewall no pfSense:** Liberação de portas e mapeamento de tráfego específico para Zabbix Active Checks, requisições do Grafana e pacotes ICMP.
* **Dashboards Customizados:** Criação de painéis modulares no Grafana focados em visibilidade rápida de incidentes operacionais.

---

## 🚀 Como Executar / Replicar
1. Configure o **pfSense** em uma máquina virtual (ou firewall de borda) isolando as redes e criando as regras de liberação de tráfego.
2. Instancie o **Zabbix Server**, cadastre os hosts locais e valide a comunicação via SNMP e Zabbix Agent.
3. Conecte o **Grafana** utilizando o plugin de dados do Zabbix e importe ou crie seus painéis customizados.