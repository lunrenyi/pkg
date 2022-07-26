pkg:info "ucloud"
ulcoud_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"
    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/ucloud.${osname}.${arch} -h'
}

ulcoud_test

x pkg uninstall ulcoud