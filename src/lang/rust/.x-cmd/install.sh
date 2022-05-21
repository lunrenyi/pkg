


___x_cmd_env_rust_copy_to_unpackdir()(
    local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version.$file_suffix"
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"
    x uz $ball $tgt
    cd "$tgt" || return 1
    ./install.sh --destdir="../tmp" --prefix=/
    x rmrf "$PWD"
)

___x_cmd_pkg_rust_unpack