pkg:info "fd"

fd_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/*/fd -V' <<A
fd 8.3.2
A
}
fd_test

