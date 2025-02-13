#!/bin/bash

# Update system and install OpenVPN and Easy-RSA
echo "Updating system and installing OpenVPN & Easy-RSA..."
sudo apt update && sudo apt install -y openvpn easy-rsa

# Create the OpenVPN CA directory
mkdir -p ~/openvpn-ca
cp -r /usr/share/easy-rsa/* ~/openvpn-ca/
cd ~/openvpn-ca

# Initialize the PKI
./easyrsa init-pki

# Build the Certificate Authority (CA)
echo "Building Certificate Authority (CA)..."
./easyrsa build-ca nopass

echo "OpenVPN and Easy-RSA setup completed!"
