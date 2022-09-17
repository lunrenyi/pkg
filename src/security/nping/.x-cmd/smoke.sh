pkg:info "nping"

nping_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout eval '$___X_CMD_PKG_INSTALL_PATH/nping/7.92/nping.${osname}.${arch} --version' <<A

Nping version 0.7.92 ( https://nmap.org/nping )
A
}

nping_test

