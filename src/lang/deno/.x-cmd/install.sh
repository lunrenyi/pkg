___x_cmd_deno_unpack(){
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version/bin"

    pkg:info "Unpack: $ball to $tgt"
    x uz "$ball" "$tgt"  || {
        pkg:warn "Fail to unzip $ball"
    }

}

___x_cmd_deno_unpack
