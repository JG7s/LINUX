#!/bin/bash

# Desenvolvido por: Bee Solutions
# Autor: Fernando Almondes
# Data: 08/03/2024 14:44

porta=$1

if [[ -z $porta ]]; then
echo "Use: /usr/lib/zabbix/externalscripts/chech_ssh.sh 22"
exit 1
fi

var=$(ss -n | grep -i ":$porta" | wc -l)

echo $var