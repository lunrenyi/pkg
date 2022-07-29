pkg:info "ncat"
ncat_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/ncat.${osname}.${arch} --version 2>&1 | awk '\''NR==1{print $1} '\''' <<A
Ncat:
A
}

ncat_test

