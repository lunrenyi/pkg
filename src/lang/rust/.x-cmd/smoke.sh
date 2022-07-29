pkg:info "rust"
x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/rustc -V 2>&1 | awk '\''NR==1{print $1 $2} '\''' <<A
rustc1.60.0
A

