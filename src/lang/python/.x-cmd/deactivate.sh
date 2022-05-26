# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_python_deactivate(){
    x path rm "$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version/bin"
}

___x_cmd_python_deactivate
