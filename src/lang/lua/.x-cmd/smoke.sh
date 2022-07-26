pkg:info "lua"

x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/lua54 -v' <<A
eval /home/mnnna/.x-cmd/.tmp/pkg/installed/lua/5.4.2/lua54 -v
Lua 5.4.2  Copyright (C) 1994-2020 Lua.org, PUC-Rio
A

