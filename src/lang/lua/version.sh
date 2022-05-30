# shellcheck    shell=sh            disable=SC3043      # xrc

get_lua_version(){
    curl http://luabinaries.sourceforge.net/download.html 2>/dev/null | awk '{
        if (match($0, "^(		LuaBinaries )[^-]*")){
            version = substr($0, 15, 5)
            print version ":\n  sha:"
        }
    }'
}
# get_lua_version
get_lua_version | x yq -o json e -P
