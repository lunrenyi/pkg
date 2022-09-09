pkg:info "tmux"

tmux_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

if [ $osname = "darwin" ]; then
    x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/tmux.${osname}.${arch} -V <<A
tmux.darwin.x64 3.2a
A
else
    x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/tmux.${osname}.${arch} -V <<A
tmux.linux.x64 3.2a
A
fi
}
tmux_test

