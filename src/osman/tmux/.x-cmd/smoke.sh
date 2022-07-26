pkg:info "tmux"

tmux_test(){
    x assert stdout 'eval eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/tmux.${osname}.${arch} --h' <<A
usage: tmux [-2CluvV] [-c shell-command] [-f file] [-L socket-name]
            [-S socket-path] [command [flags]]
A
}
tmux_test

