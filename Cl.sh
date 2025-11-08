#!/bin/sh
sudo apt update
sudo apt install --assume-yes ./chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo apt install --assume-yes lightdm
sudo systemctl disable lightdm.service
sudo apt install --assume-yes qbittorrent
