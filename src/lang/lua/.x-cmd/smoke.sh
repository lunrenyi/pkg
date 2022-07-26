pkg:info "lua"

lua_test(){
x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/lua54 -v' <<A
Lua 5.4.2  Copyright (C) 1994-2020 Lua.org, PUC-Rio
A
}
lua_test