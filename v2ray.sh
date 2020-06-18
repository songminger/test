 sudo su

# v2ray
 bash <(curl -L -s https://install.direct/go.sh)

service v2ray status
 vim /etc/v2ray/config.json
 service v2ray status
 service v2ray start

# shadowsocks-go
wget --no-check-certificate https://raw.githubusercontent.com/iMeiji/shadowsocks_install/master/shadowsocks-go.sh
chmod +x shadowsocks-go.sh
./shadowsocks-go.sh 2>&1 | tee shadowsocks-go.log

# bbr
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh

# centos stop firewar (vultr)
systemctl stop firewalld.service
