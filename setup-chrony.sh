#!/bin/bash

# Script to install and configure Chrony as NTP client on Ubuntu

set -e

echo "📦 Installing chrony..."
sudo apt update
sudo apt install -y chrony

echo "🔧 Configuring chrony..."
# Backup existing config
sudo cp /etc/chrony/chrony.conf /etc/chrony/chrony.conf.bak

# Set custom NTP servers (Google + pool.ntp.org)
sudo tee /etc/chrony/chrony.conf > /dev/null <<EOF
# Custom NTP servers
server time.google.com iburst
server 0.pool.ntp.org iburst
server 1.pool.ntp.org iburst

driftfile /var/lib/chrony/chrony.drift
makestep 1.0 3
rtcsync
allow
logdir /var/log/chrony
EOF

echo "⏱️ Restarting chrony service..."
sudo systemctl restart chrony
sudo systemctl enable chrony

echo "🚫 Disabling systemd-timesyncd (if running)..."
sudo systemctl stop systemd-timesyncd || true
sudo systemctl disable systemd-timesyncd || true

echo "✅ Checking sync status..."
chronyc tracking

echo "📡 Current NTP sources:"
chronyc sources -v

echo "✅ Chrony setup complete."

