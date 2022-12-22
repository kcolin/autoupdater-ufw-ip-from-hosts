Bash script from automatic update IPswhite list from hostname.
You can add as many A records to host name and as many hostnames as you like.

My script add rules for all ports, you can modify it.

Recommended set this script to cron for run every 5 minutes. Example:

`*/5 * * * * /var/autoupdater-ufw-ip-from-hosts//run.sh`

Auto setup:
`apt install dnsutils git && cd /var/ && git clone https://github.com/kcolin/autoupdater-ufw-ip-from-hosts.git && cd /var/autoupdater-ufw-ip-from-hosts/ && chmod 777 run.sh`
