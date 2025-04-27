
# Network Security Monitoring with Wazuh, ELK Stack & Splunk

This project integrates **Wazuh**, **ELK Stack (Elasticsearch, Logstash, Kibana)**, and **Splunk** to create a comprehensive network security monitoring solution. It is designed to collect, process, store, and analyze security logs from endpoints and network devices to detect threats, respond to incidents, and ensure continuous monitoring.

## Contributors:
- **Nishikanta Padhihari** - Project Lead, Developer
- **Adeeba Nizam** - Co-Developer, Security Analyst

## Architecture Overview:
- **Wazuh** agents installed on endpoints and network devices collect security logs and events.
- **Logstash** ingests and processes logs from Wazuh and forwards them to **Elasticsearch**.
- **Elasticsearch** stores logs in an indexed format, enabling efficient querying.
- **Kibana** visualizes logs and security events for easy analysis.
- **Splunk** correlates logs and provides advanced analytics and alerting.

## Data Flow:
1. **Wazuh Agent** on endpoints collects logs.
2. Logs are sent to the **Wazuh Manager**.
3. The **Logstash pipeline** processes the logs and forwards them to **Elasticsearch**.
4. **Kibana** displays security events and logs for analysis.
5. **Splunk** receives logs for advanced threat detection and correlation.

