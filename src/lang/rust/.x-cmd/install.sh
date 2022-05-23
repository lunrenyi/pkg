___x_cmd_pkg_rust_unpack()(
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/rust-$version"
    local unpack_dir="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version/tmp"

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
    x rmrf "$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version"

)

___x_cmd_pkg_rust_unpack