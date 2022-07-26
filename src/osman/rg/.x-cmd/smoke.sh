pkg:info "rg"
rg_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/rg.${osname}.${arch} -V' <<A
ripgrep 13.0.0
A
}