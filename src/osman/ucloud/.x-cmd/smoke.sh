pkg:info "ucloud"
ulcoud_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"
    x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/ucloud.${osname}.${arch} --version <<A
ucloud cli 0.1.38
A
}

ulcoud_test

