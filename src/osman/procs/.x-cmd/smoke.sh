pkg:info "procs"

procs_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert 'eval eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/procs.${osname}.${arch} -V' <<A
procs 0.11.9
A
}

procs_test

x pkg uninstall procs