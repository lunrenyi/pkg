pkg:info "zellij"
zellij_test(){
    x assert  stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/zellij -V' << A
zellij 0.30.0
A
}
zellij_test


