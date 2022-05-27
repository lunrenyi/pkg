___x_cmd_ffmpeg_unpack()(
    x mkdirp "$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"
    cd "$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version" || exit
    pkg:info "$ball"
    p7zd x "$ball" 1>/dev/null 2>/dev/null
    ___x_cmd_pkg___attr "$pkg_name" "$version" "$osarch" zipname
    chmod +x "$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version/$zipname" && pkg:info "Finish file decompress and chmod."
)

___x_cmd_ffmpeg_unpack