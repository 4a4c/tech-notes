for i in $(fl list-machines --no-legend --fields ip); do echo $i; ssh $i "sudo timedatectl status | grep 'NTP synchronized' && sudo ntptime | grep precision";  done
