#!/bin/bash

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Check Rust and Cargo versions
rustc --version
cargo --version

# Add Rust to bashrc
echo 'source $HOME/.cargo/env' >> ~/.bashrc
source ~/.bashrc

# Install Soundness Layer
curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source ~/.bashrc

# Install and update Soundness
source ~/.bashrc
soundnessup install
soundnessup update

# Generate a key
soundness-cli generate-key --name my-key

# List keys
soundness-cli list-keys

# Export the key
soundness-cli export-key --name my-key
