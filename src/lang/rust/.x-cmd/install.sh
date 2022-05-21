___x_cmd_pkg_rust_unpack()
    local file_suffix
    ___x_cmd_pkg___attr "$pkg_name" "$version" "$osarch" file_suffix

    local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version.$file_suffix"
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/rust-$version"
    local unpack_dir="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version/tmp"
    # x rmrf "$tgt" && mkdir -p "$tgt"
    # pkg:debug "Moving $unpack_dir to $tgt"
    local bin_path
    bin_path="$(___x_cmd_pkg_xbin_path "$pkg_name" "$version")"
    if [ -x "$bin_path" ]; then
        pkg:debug "rust $version had been unpacked."
        return 0
    fi

    x uz "$ball" "$unpack_dir" 1>/dev/null || {
        pkg:warn "Fail to unzip $ball"
    }
    x rmrf "$tgt" && mkdir -p "$tgt"
    mv -f "$unpack_dir"/*/* "$tgt"
    if ! cd "$tgt/"; then
        pkg:warn "can't enter into $tgt"
        return 1
    fi
    ./install.sh --destdir="../$version/" --prefix=/
    cd .. && x rmrf "$tgt"
    # mv -f "$unpack_dir"/*/* "$tgt"
    x rmrf "$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version"
    # echo $PWD

)

___x_cmd_pkg_rust_unpack