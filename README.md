Bash script from automatic update IPswhite list from hostname.
You can add as many A records to host name and as many hostnames as you like.

My script add rules for all ports, you can modify it.

Recommended set this script to cron for run every 5 minutes. Example:

`*/5 * * * * /home/USERNAME/auto_whitelist/run.sh`