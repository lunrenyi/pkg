pkg:info "7za"
7za_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"
if [ $osname = "darwin" ]; then
x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/7za.${osname}.${arch} -version 2>&1 | awk 'NR==2{print $1 $4} ' <<A
7-Zip17.04
A
else
    x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/7za.${osname}.${arch} -version 2>&1 | awk 'NR==2{print $1 $4} ' <<A
7-Zip16.02
A
fi
}
7za_test
