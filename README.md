# yaes

Yet Another Enumeration Script (work in progress!)

## purpose

This is my little project in order to automate whatever I can during initial recon phase, when targeting various machines either in CTFs or labs.

## architecture

Everything is in bash, as I love it. I tend to extract enumeration of each service as separate module I can attach/enable in config. Among service enumeration I want to make also other useful modules, like creating quick shell catcher using socat, proxy to access sites over VPN without running GUI in Kali for example etc.

## configuration

As this started as personal project, YAES is connected tightly to my [infosec repostory](https://github.com/d47zm3/infosec) where I keep some binaries, scripts, tools, etc. Location of these is kept inside .yaes.conf - main configuration file inside /root/ directory, before using YAES, you have to create one, it looks like this.

```
#!/bin/bash
# configuration for yaes
# interface to use with tools
iface=tun0

# interface to use for web-proxy (access http services via your attacker machine)
web_iface=eth0

# where to store logs from tools
logs_path="${HOME}/.yaes/logs/"

# where did you checkout repository
repository_root=/root/infosec

# where is workspace (currently not really used)
current_workspace=${repository_root}/workspace/targets/

# where do you store enumeration scripts
enumeration_scripts=${repository_root}/enumeration

# where do you store privilege-escalation scripts
privesc_scripts=${repository_root}/privilege-escalation

# where do you store exploits
exploits_scripts=${repository_root}/exploits

# port for serving http (for exploits etc)
web_port=80

# port for proxy mode
proxy_port=8999

# port for incoming reverse shell, if 0, it's random available port (over 1000)
reverse_port=9812

# wordlists
gobuster_wordlist=/usr/share/wordlists/dirb/common.txt
gobuster_quick_wordlist=/usr/share/wordlists/dirb/common.txt
gobuster_long_wordlist=/usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt
hydra_quick_wordlist=/root/infosec/sec-lists/seclists/Passwords/best1050.txt
```

## shoutout

This platform was mainly developed using [Hack The Box](http://hackthebox.eu), as it gave me variety of machines to test scripts on, cheers!
