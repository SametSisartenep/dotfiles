include ~/.config/firejail/disable-mgmt.inc
include ~/.config/firejail/disable-secret.inc
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
#tmpfs /etc/
private-etc fonts
private-dev
whitelist ~/.tor-browser-en/
caps.drop all
seccomp
protocol unix,inet,inet6
netfilter
noroot
