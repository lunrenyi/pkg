# shellcheck    shell=sh            disable=SC3043      # xrc
___x_cmd_pkg_lua_unpack(){
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$name/$version"
    pkg:info "Unpack: $ball to $tgt"
    x rmrf "$tgt"; mkdir -p "$tgt"
    x uz "$ball" "$tgt" 2>/dev/null || {
        pkg:warn "Fail to unzip $ball"
    }
    pkg:info "Finish unpack"
}
___x_cmd_pkg_lua_unpack
