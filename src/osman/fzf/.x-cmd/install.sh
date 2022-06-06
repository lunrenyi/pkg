# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_fzf_unpack(){
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$name/$version"

    pkg:info "Unpack: $ball to $tgt"
    x uz "$ball" "$tgt"  || {
        pkg:warn "Fail to unzip $ball"
    }

}

___x_cmd_fzf_unpack
