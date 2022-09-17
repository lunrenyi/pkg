pkg:info "aliyun"
aliyun(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout eval '$___X_CMD_PKG_INSTALL_PATH/$name/$version/aliyun.${osname}.${arch} version '<<A
3.0.121
A
}
aliyun
