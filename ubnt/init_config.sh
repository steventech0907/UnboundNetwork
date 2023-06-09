# ipset创建
sudo ipset -N gfwlist iphash
# nat规则配置
sudo iptables -t nat -A PREROUTING -p tcp -m set --match-set gfwlist dst -j REDIRECT --to-port 1234
# dns服务重启
sudo service dnsmasq restart