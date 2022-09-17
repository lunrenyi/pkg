pkg:info "jq"

jq_test(){
    local aaa
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

if [ $osname = "darwin" ]; then
    aaa=$($___X_CMD_PKG_INSTALL_PATH/$name/$version/jq.${osname}.${arch} -V 2>&1 | awk '{print $0} ')
    x assert is-eq $aaa jq-1.6-dirty
else
    aaa=$($___X_CMD_PKG_INSTALL_PATH/$name/$version/jq.${osname}.${arch} -V 2>&1 | awk '{print $0} ')
    x assert is-eq $aaa jq-1.6
fi
}
jq_test

