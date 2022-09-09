pkg:info "bandwhich"
bandwhich_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/bandwhich.${osname}.${arch} -V <<A
bandwhich 0.20.0
A
}

bandwhich_test
