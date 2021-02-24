# Monitoramento de Velocidade via Zabbix
Velocidade entregue da sua operadora.

Já pensou em saber qual é a velocidade que é entregue por sua operadora naquele momento? Irei ensinar a como realizar esse monitoramento via Zabbix.

Antes de começar é necessário que seja colocado os dois scripts em  externalscripts do Zabbix (ou aonde você definiu).

1 - cd /usr/lib/zabbix/externalscripts/
2 - wget https://raw.githubusercontent.com/everaldoscabral/velocidade-speedtest/main/speedtest.py
3 - wget https://raw.githubusercontent.com/everaldoscabral/velocidade-speedtest/main/velocidade.sh
4 - chmod 777 velocidade.sh speedtest.py

Agora basta importar o template TEMPLATE-SPEEDTEST.xml.
