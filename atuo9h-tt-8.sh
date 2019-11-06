apt-get -y upgrade &&
apt install -y whiptail cron bzip2 &&
cd /etc/pam.d/ &&
sed -i "s/required/sufficient/g" cron &&
cd ~ &&
/etc/init.d/cron restart &&
git clone https://github.com/MauroS5/9Hits-AutoInstall.git &&
chmod -R 777 9Hits-AutoInstall &&
9Hits-AutoInstall/install.sh "2" "64730c0a01d3e9cec964b0b03b5c142a" "7" "15" &&
rm install.sh
