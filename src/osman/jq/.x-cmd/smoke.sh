pkg:info "jq"

jq_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/jq.linux.x64 -V' <<A
jq-1.6
A
}
jq_test

