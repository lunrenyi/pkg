___x_cmd_node_activate(){
    x path add_existed_folder "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"

    if [ "${NPM_CONFIG_PREFIX-}" = "" ] && [ -n "$___X_CMD_PKG_INSTALL_PATH" ]; then
        export NPM_CONFIG_PREFIX=$___X_CMD_PKG_INSTALL_PATH/.npm
    fi
}

___x_cmd_node_activate