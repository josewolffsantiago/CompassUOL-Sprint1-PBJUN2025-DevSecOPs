#!/bin/bash

#Variaveis criticas do TELEGRAM

ID_GROUP=ESCONDIDO
TOKEN_BOT=ESCONDIDO
IP_PUBLICO=$(curl -s ifconfig.me)

#Criar arquivo de log monitoramento.log
touch /var/log/monitoramento.log

#Codigo para verificar o funcionamento do site, se o mesmo esta no ar corretamente

HTTP_CODE=$(curl -L -s -o /dev/null -w "%{http_code}" $IP_PUBLICO )

if [ "$HTTP_CODE" ==  "200" ]; then
	MESSAGE_ON="ADMIN: Servidor se encontra ativo"
	echo "$(date +"%F %T") -  $MESSAGE_ON" >> /var/log/monitoramento.log

else
	MESSAGE_OFF="ADMIN: O site de encontra fora do ar!"
	echo "$(date +"%F %T") -  $MESSAGE_OFF" >> /var/log/monitoramento.log
	curl -s -X POST "https://api.telegram.org/bot$TOKEN_BOT/sendMessage" -d chat_id="$ID_GROUP" -d text="$MESSAGE_OFF"

fi' 
