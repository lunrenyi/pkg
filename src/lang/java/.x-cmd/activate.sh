# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_java_activate(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"
    ___x_cmd_path_unshift "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"
    if [ $arch = "x64" ] || [ $osname = "darwin" ];then
        export JAVA_HOME="$___X_CMD_PKG_INSTALL_PATH/$name/$version/Contentss/Home/bin"
    elif [ -n "$___X_CMD_PKG_INSTALL_PATH" ]; then
        export JAVA_HOME="$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"

    fi
}


___x_cmd_java_activate