# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_java_deactivate(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"
    if [ $arch = "x64" ] && [ $osname = "darwin" ];then
        x path rm "$___X_CMD_PKG_INSTALL_PATH/$name/$version/Contents/Home/bin"
    elif [ -n "$___X_CMD_PKG_INSTALL_PATH" ]; then
        x path rm "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"
    fi
}

___x_cmd_java_deactivate