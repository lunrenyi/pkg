pkg:info "rust"
x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/rustc -V' <<A
rustc 1.60.0 (7737e0b5c 2022-04-04)
A

x pkg uninstall rust