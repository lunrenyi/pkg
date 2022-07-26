x log +pkg
pkg:info "deno"
x assert 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/deno -V' <<A
deno 1.22.0
A
