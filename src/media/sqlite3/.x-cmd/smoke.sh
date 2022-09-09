pkg:info "sqlite3"
sqlite3_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout  $___X_CMD_PKG_INSTALL_PATH/$name/$version/sqlite3.${osname}.${arch} -version 2>&1 | awk ' NR==1{print sqlite3 $1}' <<A
3.36.0
A
}
sqlite3_test
