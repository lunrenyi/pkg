___x_cmd_node_activate(){
    # x path add_existed_folder "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"

    if  [ -n "$___X_CMD_PKG_INSTALL_PATH" ]; then
        export NPM_CONFIG_PREFIX="$___X_CMD_PKG_INSTALL_PATH/$name/$version/.npm"
        x path unshift "$___X_CMD_PKG_INSTALL_PATH/$name/$version/.npm/bin"
    fi

    echo $name "    " $version "   \$@   " $@

}

___x_cmd_node_activate