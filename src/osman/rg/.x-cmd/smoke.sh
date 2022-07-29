pkg:info "rg"
rg_test(){
    x assert stdout ' $___X_CMD_PKG_INSTALL_PATH/$name/$version/rg -V' <<A
ripgrep 13.0.0
A
}

rg_test