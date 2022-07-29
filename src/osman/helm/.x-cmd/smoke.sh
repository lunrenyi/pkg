pkg:info "helm"
helm_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/*/helm version 2>&1 | awk '\''NR==1{print $1} '\''' << A
version.BuildInfo{Version:"v3.9.0",
A
}
helm_test
