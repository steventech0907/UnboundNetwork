# 1.Xray整体原理
![image](https://github.com/StevenTech2023/SecureTunnelHub/assets/13182431/1734fa1c-fa24-492b-85fb-707c939c020e)

# 2.BBR优化开启

一键执行脚本
```bash
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
```

状态检查
```bash
lsmod | grep bbr
```
![image](https://github.com/StevenTech2023/SecureTunnelHub/assets/13182431/cc1cc503-06ec-4c15-85c9-6b23f351b172)

# 3.Caddy伪装代理

Xray client <--- websocks ---> Caddy2 <--- websocks ---> Xray server




