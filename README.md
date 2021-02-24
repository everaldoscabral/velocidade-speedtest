# Monitoramento de Velocidade via Zabbix
Velocidade entregue da sua operadora.

Já pensou em saber qual é a velocidade que é entregue por sua operadora naquele momento? Irei ensinar a como realizar esse monitoramento via Zabbix.

Antes de começar é necessário que seja colocado os dois scripts em  externalscripts do Zabbix (ou aonde você definiu) e timeout 30.

## Como fazer:

* crontab -e colocar */5 * * * * /usr/lib/zabbix/externalscripts/speedtest.py --simple  > /tmp/velocidade.txt
* cd /usr/lib/zabbix/externalscripts/
* wget https://raw.githubusercontent.com/everaldoscabral/velocidade-speedtest/main/speedtest.py
* wget https://raw.githubusercontent.com/everaldoscabral/velocidade-speedtest/main/velocidade.sh
* chmod 777 velocidade.sh speedtest.py

Agora basta importar o template *TEMPLATE-SPEEDTEST.xml.*

## Imagens:

![grafana.jfif](grafana.jfif)

![zabbix.PNG](zabbix.PNG)
