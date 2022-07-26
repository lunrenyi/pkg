pkg:info "fzf"

arch="$(___x_cmd_os arch)"
osname="$(___x_cmd_os name)"

x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/fzf --version' <<A
0.30.0 (2093667)
A