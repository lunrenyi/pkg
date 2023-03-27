# shellcheck shell=sh disable=SC2154,SC2115
___x_cmd_lua_deactivate(){
    x path rm "$___X_CMD_PKG_INSTALL_PATH/$name/$version"
}

___x_cmd_lua_deactivate
