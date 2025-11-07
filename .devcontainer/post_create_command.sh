#!/bin/bash

set -euo pipefail

# Package manager dependencies.
sudo apt update
sudo apt install -y build-essential pkg-config vim

# Install the Rust toolchain.
RUST_VERSION=1.91.0
rustup toolchain install $RUST_VERSION
rustup component add --toolchain $RUST_VERSION rustfmt
rustup component add --toolchain $RUST_VERSION clippy
