pkg:info "exa"

exa_test(){
local arch
local osname
arch="$(___x_cmd_os arch)"
osname="$(___x_cmd_os name)"

x assert stdout eval  '$___X_CMD_PKG_INSTALL_PATH/$name/$version/exa.${osname}.${arch} -V 2>&1 | awk '\''NR==1{print $1} '\'' ' <<A
exa:
A
}
exa_test

