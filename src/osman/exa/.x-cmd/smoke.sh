pkg:info "exa"

exa_test(){
local arch
local osname
arch="$(___x_cmd_os arch)"
osname="$(___x_cmd_os name)"

x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/exa.${osname}.${arch} -v' <<A
exa - list files on the command-line
v0.10.1 [+git]
https://the.exa.website/
A
}
exa_test

x pkg uninstall exa