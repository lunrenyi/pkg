pkg:info "sqlite3"
sqlite3_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/sqlite3.${osname}.${arch} -version' <<A
3.36.0 2021-06-18 18:36:39 5c9a6c06871cb9fe42814af9c039eb6da5427a6ec28f187af7ebfb62eafa66e5
A
}
sqlite3_test
