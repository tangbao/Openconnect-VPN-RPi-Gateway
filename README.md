# Openconnect-VPN-RPi-Gateway

See the [blog](https://blog.tangbao.me/2022/01/vpn-gateway/) (Chinese) for how to build an Openconnect VPN Gateway for all the other devices in the same network. Via this gateway you can easily connect to the sources behind the VPN. VPN is managed by the RPi and will be always connected.

English version will be available soon (if I have time..)

## duo.py

A CLI tool to generate Duo 2FA passcode.

### Usage

First time:

Get QR URL first. Add a new device for Duo, choose `Add a new device` - `Tablet` - `Android` - `I have Duo Mobile installed`, when the QR code show up, right click it and copy the image URL, then run the following cmd, you will get a 6 digit passcode.

```bash
python3 duo.py -qr <Duo QR URL>
```

After the first time:

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