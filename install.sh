#!/bin/bash

echo ""
echo "Installing ArmuxScan..."
echo ""

# Update & install Python
pkg update -y && pkg upgrade -y
pkg install python git -y

# Clone repo if not cloned
if [ ! -d "ArmuxScan" ]; then
    git clone https://github.com/ARMUX-SS/ArmuxScan.git
fi

cd ArmuxScan || exit

# Install required packages
pip install -r requirements.txt

# Give permission
chmod +x armScan.py

echo ""
echo "Installation Complete!"
echo "Run using: python armScan.py"
echo "Coded by ARMUX-SS | IG: @armux_ss"
