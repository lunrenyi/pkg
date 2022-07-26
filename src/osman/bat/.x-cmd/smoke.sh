pkg:info "bat"
bat_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bat.${osname}.${arch} --version' <<A
bat 0.18.2
A
}

bat_test

