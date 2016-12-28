#!/bin/sh

set -e
set -x

TUNNEL_IP=${IODINE_TUNNEL_IP:-"10.10.10.1"}

iptables -t nat -A POSTROUTING -s 10.10.10.0/24 -o eth0 -j MASQUERADE

iptables -S
iptables -S -t nat

mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

iodined -c -f -P "${IODINE_PASSWORD}" -n "${EXTERNAL_IP}" "${TUNNEL_IP}" "${IODINE_HOST}"
