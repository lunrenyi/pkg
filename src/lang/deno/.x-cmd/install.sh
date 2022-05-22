___x_cmd_deno_unpack(){
    local file_suffix
    ___x_cmd_pkg___attr "$pkg_name" "$version" "$osarch" file_suffix
    local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version.$file_suffix"
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version/bin"

    local bin_path
    bin_path="$(___x_cmd_pkg_xbin_path "$pkg_name" "$version")"
    if [ -x "$bin_path" ]; then
        return 0
    fi
    pkg:debug "bin_path: $bin_path"

    pkg:info "Unpack: $ball to $tgt"
    unzip -d "$tgt" "$ball"  || {
        pkg:warn "Fail to unzip $ball"
    }

}

___x_cmd_deno_unpack
