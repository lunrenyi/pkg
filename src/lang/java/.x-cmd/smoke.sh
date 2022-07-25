pkg:info "java"
osname="$(___x_cmd_os name)"
if [ osname = "darwin" ]; then
    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/Contents/Home/bin/javac -version' <<A
javac 18
A
else
    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/javac -version' <<A
javac 18
A
fi
x pkg uninstall java