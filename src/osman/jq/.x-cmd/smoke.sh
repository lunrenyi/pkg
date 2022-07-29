pkg:info "jq"

jq_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/jq.${osname}.${arch} -V 2>&1 | awk '\''{print $0} '\''' <<A
jq-1.6
A
}
jq_test

