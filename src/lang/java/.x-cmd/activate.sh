# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_java_activate(){
    x path add_existed_folder "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"

    if [ -n "$ASDF_INSTALL_PATH" ]; then
        export JAVA_HOME="$___X_CMD_PKG_INSTALL_PATH"
    fi
}

___x_cmd_java_activate