# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_scala_activate(){
    chmod -R +x "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"
    ___x_cmd_path_unshift "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"
}

___x_cmd_scala_activate