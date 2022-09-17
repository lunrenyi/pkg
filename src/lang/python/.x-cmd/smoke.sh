 pkg:info "python"
 x assert stdout eval ' $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/pip -V 2>&1 | awk '\'' NR==1{print $1 $2}'\'' ' <<A
pip21.2.4
A
