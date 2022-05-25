# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_pkg_python_unpack(){
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"
    mkdir -p "$tgt"
    cp -r $ball $tgt
    local archive_path="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version/$version.$file_suffix"
    chmod +x "${archive_path}" && \
    "${archive_path}" -b -u -p "${archive_path%/*}" 1>&2
}

___x_cmd_pkg_python_unpack


