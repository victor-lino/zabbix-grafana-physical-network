# 📐 Physical Network Monitoring Lab: Architecture

This document details the topology and communication flow implemented in the physical network monitoring laboratory.

## 🗺️ Topology & Data Flow

1. **Edge & Routing (pfSense):**
   * pfSense acts as the core edge firewall of the infrastructure.
   * Manages NAT rules, subnet isolation, and secure traffic filtering between the physical network and virtualized environments.

2. **Metrics Collection (Zabbix Server):**
   * Zabbix centralizes scanning and data collection from local network hardware and endpoints.
   * Utilizes **SNMP** for routers and consoles (PS5) and **Zabbix Agent** for Windows/Linux hosts.

3. **Visualization (Grafana):**
   * Connects directly to the Zabbix database as a *Data Source*.
   * Renders custom dashboards for network traffic, resource utilization, and power telemetry (UPS/Battery).

## 🔒 Ports & Communication Protocols
* **10051 (TCP):** Zabbix Agent / Active checks.
* **161 / 162 (UDP):** SNMP protocol for network devices and UPS monitoring.
* **3000 (TCP):** Grafana Web UI access.