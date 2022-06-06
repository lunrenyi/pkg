# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_julia_unpack(){
    ___x_cmd_pkg_install___unzip "$name" "$version" "$osarch"
    # local tgt="$___X_CMD_PKG_INSTALL_PATH/$name/$version"

    # pkg:debug "Unpack: $ball to $tgt"
    # x uz "$ball" "$tgt"  || {
    #     pkg:warn "Fail to unzip $ball"
    # }
    # pkg:info "Finish unpack $name $version to $tgt"
}

___x_cmd_julia_unpack
