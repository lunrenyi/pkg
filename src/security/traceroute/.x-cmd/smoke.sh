pkg:info "traceroute"
traceroute_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout eval  '$___X_CMD_PKG_INSTALL_PATH/$name/$version/traceroute.${osname}.${arch} -V 2>&1 | awk '\''NR==1{print $2} '\''' <<A
traceroute
A
}

traceroute_test

