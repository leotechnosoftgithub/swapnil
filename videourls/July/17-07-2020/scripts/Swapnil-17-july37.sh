#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/swapnil  http://18.207.24.43/swapnil
for i in `cat ./videourls/July/17-07-2020/urls/37`;do ip=`shuf -n 1 ./ips/swapnil`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./swapnil.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job Swapnil-17-july37.sh completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
