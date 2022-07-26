pkg:info "tig"

tig_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/tig.${osname}.${arch} -v' <<A
tig version 2.5.5
ncursesw version 6.3.20211021
A
}

tig_test

