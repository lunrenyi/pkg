___x_cmd_node_activate(){

    ___x_cmd_path_unshift "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"

    if  [ -n "$___X_CMD_PKG_INSTALL_PATH" ]; then
        export NPM_CONFIG_PREFIX="$___X_CMD_PKG_INSTALL_PATH/$name/$version/.npm"
        x path unshift "$___X_CMD_PKG_INSTALL_PATH/$name/$version/.npm/bin"
    fi
}
___x_cmd_node_activate