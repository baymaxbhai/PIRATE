#openvpn
#edited by PakTam

echo "OVPN Login"
echo "---";

for PID in "${data[@]}"
do
        #echo "check $PID";
        NUM=`cat /var/log/auth.log | grep -i ppp | grep -i "Accepted password for" | grep "pptp\[$PID\]" | wc -l`;
        USER=`cat /var/log/auth.log | grep -i pptp | grep -i "Accepted password for" | grep "pptp\[$PID\]" | awk '{print $9}'`;
        IP=`cat /var/log/auth.log | grep -i pptp | grep -i "Accepted password for" | grep "pptp\[$PID\]" | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
        fi
done
echo "---";

echo -e "\e[1;33;44mPakTam_BHAI_SSH\e[0m"
