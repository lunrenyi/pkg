# shellcheck shell=sh disable=SC2154,SC2115
pkg:info "zellij"
zellij_test(){
    x assert  stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/zellij -V  << A
zellij 0.30.0
A
}
zellij_test


