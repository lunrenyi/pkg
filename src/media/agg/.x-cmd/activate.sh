___x_cmd_agg_activate(){
echo "ff"
    if ! [ -f "$___X_CMD_PKG_BINARY_PATH/$name" ]; then
        command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$name.$os.$arch"  "$___X_CMD_PKG_BINARY_PATH"
    fi
    ___x_cmd_path_unshift "$___X_CMD_PKG_BINARY_PATH"

}
___x_cmd_agg_activate