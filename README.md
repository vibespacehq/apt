# Vibespace APT Repository

## Quick Install
```bash
curl -fsSL https://vibespacehq.github.io/apt/pubkey.asc | sudo gpg --dearmor -o /usr/share/keyrings/vibespace.gpg
echo "deb [signed-by=/usr/share/keyrings/vibespace.gpg] https://vibespacehq.github.io/apt stable main" | sudo tee /etc/apt/sources.list.d/vibespace.list
sudo apt update
sudo apt install vibespace
```
