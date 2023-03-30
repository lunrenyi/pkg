___x_cmd_gum_activate(){
    if [ -f "$___X_CMD_PKG_BIN_PATH/$name" ]; then
        rm -rf "$___X_CMD_PKG_BIN_PATH/$name"
    fi
    if [ -n $ZSH_VERSION ]; then
        chmod +x "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$name.zsh"
        command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$name.zsh"  "$___X_CMD_PKG_BIN_PATH/$name"
    else
        chmod +x "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$name.bash"
        command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$name.bash"  "$___X_CMD_PKG_BIN_PATH/$name"
    fi
}

___x_cmd_gum_activate