# Openconnect-VPN-RPi-Gateway

## duo.py

A CLI tool to generate Duo 2FA passcode.

### Usage

First time:

Get QR URL first. Add a new device for Duo, choose Android - Tablet, when the QR code show up, right click it and copy the image URL.

```bash
python3 duo.py -qr <Duo QR URL>
```

After:

```
python3 duo.py
```

## myvpn.sh

Use openconnect to connect to VPN with only one line command.

## myvpn.service

Use systemd to keep your VPN connection always alive.

## clash.service

From official clash doc.

Use systemd to keep your clash always alive.

## config.yaml

Clash config example.