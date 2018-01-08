#!/bin/bash
##test ping
#upip=/var/log/upip.`date +%m%d%Y`
#downip=/var/log/downip.`date +%m%d%Y`
siteip=211.81.248
for octet in `seq 2 254 `
do
   echo -en "Pinging ${siteip}.${octet}....."
#  >/dev/null 重定向将之前的标准输出到null中相当于丢失
#  2>&1将语句的错误输出重定向到1（标准输出中）  
   ping -c1 -w1 ${siteip}.${octet} >/dev/null 2>&1
   if [ "$?" -eq "0" ]; then
#"$?" $?:上一个命令执行的结果
#      echo "$" 
      echo "OK"
#      echo "${siteip}.${octet}" >> ${upip}
   else
      echo "Failed"
#      echo "${siteip}.${octet}" >> ${downip}
    fi
done

