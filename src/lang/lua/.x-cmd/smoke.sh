pkg:info "lua"

lua_test(){
x assert stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/lua54 -v 2>&1 | awk '\'' {print $1 $2}'\''' <<A
Lua5.4.2
A
}
lua_test