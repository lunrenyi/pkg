___x_cmd_pkg_python_unpack(){
    # local bin_path
    # bin_path="$(___x_cmd_pkg_xbin_path "$pkg_name" "$version")"
    # if [ -x "$bin_path" ]; then
    #     pkg:debug "python $version had been unpacked."
    #     return 0
    # fi
    # local file_suffix
    # ___x_cmd_pkg___attr "$pkg_name" "$version" "$osarch" file_suffix
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"
    # local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version.$file_suffix"
    mkdir -p "$tgt"
    cp -r $ball $tgt
    local archive_path="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version/$version.$file_suffix"
    chmod +x "${archive_path}" && \
    "${archive_path}" -b -u -p "${archive_path%/*}" 1>&2
}

___x_cmd_pkg_python_unpack