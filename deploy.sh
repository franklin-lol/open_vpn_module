#!/bin/bash

# Установка OpenVPN
apt-get update && apt-get install -y openvpn

# Конфигурация OpenVPN
echo "port 1194" >> /etc/openvpn/server.conf
echo "proto udp" >> /etc/openvpn/server.conf
echo "dev tun" >> /etc/openvpn/server.conf
echo "ca ca.crt" >> /etc/openvpn/server.conf
echo "cert server.crt" >> /etc/openvpn/server.conf
echo "key server.key" >> /etc/openvpn/server.conf
echo "dh dh2048.pem" >> /etc/openvpn/server.conf

# Перезапуск сервиса OpenVPN
service openvpn restart
