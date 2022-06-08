___x_cmd_ffmpeg_unpack()(
    x mkdirp "$___X_CMD_PKG_INSTALL_PATH/$name/$version"
    cd "$___X_CMD_PKG_INSTALL_PATH/$name/$version" || exit
    pkg:info "$ball"
    xrc p7zip
    p7zd x "$ball" 1>/dev/null 2>/dev/null
    ___x_cmd_pkg___attr "$name" "$version" "$osarch" zipname
    chmod +x "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$zipname" && pkg:info "Finish file decompress and chmod."
)

___x_cmd_ffmpeg_unpack