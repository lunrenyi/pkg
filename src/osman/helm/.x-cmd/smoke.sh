pkg:info "helm"
helm_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/*/helm version' << A
version.BuildInfo{Version:"v3.9.0", GitCommit:"7ceeda6c585217a19a1131663d8cd1f7d641b2a7", GitTreeState:"clean", GoVersion:"go1.17.5"}
A
}
helm_test
