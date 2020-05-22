 # v2ray
 bash <(curl -L -s https://install.direct/go.sh)
 sudo su
 service v2ray status
 vim /etc/v2ray/config.json
 service v2ray status
 service v2ray start

# centos stop firewar (vultr)
systemctl stop firewalld.service


# shadowsocks-go
wget --no-check-certificate https://raw.githubusercontent.com/iMeiji/shadowsocks_install/master/shadowsocks-go.sh
chmod +x shadowsocks-go.sh
./shadowsocks-go.sh 2>&1 | tee shadowsocks-go.log
