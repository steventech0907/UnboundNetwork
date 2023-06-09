## 1. gfwlist convert
```
sh gfwlist2dnsmasq.sh [options] -o FILE
Valid options are:
    -d, --dns <dns_ip>
                DNS IP address for the GfwList Domains (Default: 127.0.0.1)
    -p, --port <dns_port>
                DNS Port for the GfwList Domains (Default: 5353)
    -s, --ipset <ipset_name>
                Ipset name for the GfwList domains
                (If not given, ipset rules will not be generated.)
    -o, --output <FILE>
                /path/to/output_filename
    -i, --insecure
                Force bypass certificate validation (insecure)
    -l, --domain-list
                Convert Gfwlist into domain list instead of dnsmasq rules
                (If this option is set, DNS IP/Port & ipset are not needed)
        --exclude-domain-file <FILE>
                Delete specific domains in the result from a domain list text file
                Please put one domain per line
        --extra-domain-file <FILE>
                Include extra domains to the result from a domain list text file
                This file will be processed after the exclude-domain-file
                Please put one domain per line
    -h, --help  Usage
```

If you really want to bypass the certificate validation, use '-i' or '--insecure' option. You should know this is insecure.

## 2.Ubuntu Usage

```
sh gfwlist2dnsmasq.sh -o ./gfwlist.conf -s gfwlist
```

## 3.Hardware nat enable
```
# 查看硬件nat的开启状态
show ubnt offload
```

```
# 开启硬件nat
configure
set system offload hwnat enable
commit
save
```

```
重启设备
sudo reboot
```