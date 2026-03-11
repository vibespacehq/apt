#\!/usr/bin/env bash
set -euo pipefail

# vibespace APT repository setup
# Usage: curl -fsSL https://vibespacehq.github.io/apt/setup.sh | sudo bash

if [ "$(id -u)" -ne 0 ]; then
  echo "error: this script must be run as root (use sudo)" >&2
  exit 1
fi

echo "Adding vibespace APT repository..."

curl -fsSL https://vibespacehq.github.io/apt/pubkey.asc | gpg --dearmor -o /usr/share/keyrings/vibespace.gpg
echo "deb [signed-by=/usr/share/keyrings/vibespace.gpg] https://vibespacehq.github.io/apt stable main" > /etc/apt/sources.list.d/vibespace.list
apt-get update -o Dir::Etc::sourcelist="sources.list.d/vibespace.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0" -qq

echo "Done. Run: apt install vibespace"
