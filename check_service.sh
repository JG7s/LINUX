#!/bin/bash

# Desenvolvido por: Bee Solutions
# Autor: Fernando Almondes
# Data: 08/03/2024 14:44

service=$1

if [[ -z $service ]]; then
echo "Use: /usr/lib/zabbix/externalscripts/check_service.sh nginx"
exit 1
fi

var=$(systemctl status $service | grep "Active: active (running)" | wc -l)

if [[ $var != 0 ]]; then
echo 1
else
echo 0
fi
