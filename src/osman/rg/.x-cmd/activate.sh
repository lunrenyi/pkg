___x_cmd_rg_activate(){
    if ! [ -f "$___X_CMD_PKG_BIN_PATH/$name" ]; then
        command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$name.$os.$arch"  "$___X_CMD_PKG_BIN_PATH/$name" 2>/dev/null
    fi
    ___x_cmd_path_unshift "$___X_CMD_PKG_BIN_PATH"
    x path uniq
}
___x_cmd_rg_activate