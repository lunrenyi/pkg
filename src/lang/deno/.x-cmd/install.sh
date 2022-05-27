# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_deno_unpack(){
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"

    pkg:info "Unpack: $ball to $tgt"
    x uz "$ball" "$tgt"  || {
        pkg:warn "Fail to unzip $ball"
    }

}

___x_cmd_deno_unpack
