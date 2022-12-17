#!/bin/bash

hosts="whitelist.domain.com;whitelist2.domain.com"
comment_marker="awl-marked"
ufw_path="/sbin/ufw"


#delete old marked ips
old_ips=`/sbin/ufw status | grep $comment_marker | awk '{print $3}'`
for old_ip in $old_ips
do
   $ufw_path delete allow from $old_ip
done

#geting ips from hosts
new_ips=""
for host in $(echo $hosts | tr ";" "\n")
do
  new_ips+=$'\n'
  new_ips+=$(dig +short $host)
done

#setup new ips
for new_ip in $(echo $new_ips| grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')
do
  $ufw_path allow from $new_ip comment $comment_marker
done

