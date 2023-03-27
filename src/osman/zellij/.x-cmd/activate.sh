# shellcheck shell=sh disable=SC2154,SC1090,SC3043
___x_cmd_zellij_premise_activate(){
    export SHELL="$___X_CMD_CUR_SHELL"
}
___x_cmd_zellij_premise_activate

___x_cmd_zellij_activate(){
    if ! [ -f "$___X_CMD_PKG_BIN_PATH/$name" ]; then
        command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$name.$os.$arch"  "$___X_CMD_PKG_BIN_PATH/$name" 2>/dev/null
    fi



}
___x_cmd_zellij_activate