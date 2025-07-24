#!/bin/bash

# Desenvolvido por: Bee Solutions
# Autor: Fernando Almondes
# Data: 08/03/2024 14:44

porta=$1

if [[ -z $porta ]]; then
echo "Use: /usr/lib/zabbix/externalscripts/chech_service.sh 8080"
exit 1
fi

var=$(netstat -tuln | grep -w "$porta" | wc -l)

if [[ $var != 0 ]]; then
echo 1
else
echo 0
fi
