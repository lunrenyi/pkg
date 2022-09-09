pkg:info "nmap"

nmap_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout $___X_CMD_PKG_INSTALL_PATH/ncat/7.92/nmap.${osname}.${arch} -V 2>&1 | awk ' NR==1{print $1 $3} ' <<A
Nmap7.92
A
}

nmap_test

