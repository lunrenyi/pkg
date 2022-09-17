pkg:info "deno"
deno_test(){
x assert stdout eval ' $___X_CMD_PKG_INSTALL_PATH/$name/$version/deno -V' <<A
deno 1.22.0
A
}
deno_test