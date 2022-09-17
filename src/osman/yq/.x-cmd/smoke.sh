pkg:info "yq"
yq_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"
    local aaa
    aaa=$( $___X_CMD_PKG_INSTALL_PATH/$name/$version/yq.${osname}.${arch} -V | awk ' {print $1} ')

    x assert is-eq $aaa yq
}

yq_test
