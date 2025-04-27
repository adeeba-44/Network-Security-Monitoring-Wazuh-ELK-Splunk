#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y wazuh-agent logstash elasticsearch kibana splunk

# Set up Wazuh agent
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent

# Configure Logstash
echo "Configuring Logstash..."
sudo cp ./config/logstash.conf /etc/logstash/conf.d/

# Start Elasticsearch and Kibana
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl start kibana
sudo systemctl enable kibana

# Optional: Deploy Splunk and configure it for Wazuh logs
echo "Configuring Splunk..."
# Add Splunk configuration steps here

echo "Deployment complete!"
