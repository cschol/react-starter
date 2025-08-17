#!/bin/bash

set -e

# Define versions
NVM_VERSION="v0.40.3"
NODE_VERSION="22.18.0"

echo "Installing NVM version ${NVM_VERSION}..."

# Create NVM directory
export NVM_DIR="$HOME/.nvm"
mkdir -p "$NVM_DIR"

# Download and verify NVM
DOWNLOAD_URL="https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh"
curl -sL "$DOWNLOAD_URL" -o install_nvm.sh

# Verify the download was successful
if [ ! -f install_nvm.sh ]; then
    echo "Failed to download NVM installation script"
    exit 1
fi

# Set permissions and install
chmod 755 install_nvm.sh
./install_nvm.sh

# Clean up
rm -f ./install_nvm.sh

# Source NVM in the current session
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install specific Node.js version
echo "Installing Node.js version ${NODE_VERSION}..."
nvm install "${NODE_VERSION}"
nvm use "${NODE_VERSION}"
nvm alias default "${NODE_VERSION}"

echo "Node version "${NODE_VERSION}" installed successfully!"
