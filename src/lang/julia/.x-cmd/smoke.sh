jpkg:info "julia"
x assert stdout 'eval "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/julia -v' <<A
julia version 1.8.0-rc1
A
