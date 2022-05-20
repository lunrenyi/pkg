___x_cmd_env_python_unpack(){
    echo "version: $version"
    if [ -x $ball ] ; then
        local file_suffix
        ___x_cmd_pkg___attr "$pkg_name" "$version" "$osarch" file_suffix
        local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"
        local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version.$file_suffix"
        mkdir -p "$tgt"
        mv -f $ball $tgt
        local archive_path="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version/$version.$file_suffix"
        chmod +x "${archive_path}" && \
        "${archive_path}" -b -u -p "${archive_path}" 1>&2
    fi
}

___x_cmd_env_python_unpack