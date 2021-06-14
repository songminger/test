 sudo su
 
# Debian
# v2ray
 bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

service v2ray status
 vim /usr/local/etc/v2ray/config.json
 
 {
  "inbounds": [{
    "port": 8080,
    "protocol": "vmess",
    "settings": {
      "clients": [
        {
          "id": "4fc685bd-8c1a-48b9-9e62-fffb67a3bf06",
          "level": 1,
          "alterId": 64
        }
      ]
    }
  }],
  "outbounds": [{
    "protocol": "freedom",
    "settings": {}
  },{
    "protocol": "blackhole",
    "settings": {},
    "tag": "blocked"
  }],
  "routing": {
    "rules": [
      {
        "type": "field",
        "ip": ["geoip:private"],
        "outboundTag": "blocked"
      }
    ]
  }
}

 
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
