pkg:info "yq"
yq_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert  stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/yq.${osname}.${arch} -V' << A
yq (https://github.com/mikefarah/yq/) version 4.15.1
A
}

yq_test
