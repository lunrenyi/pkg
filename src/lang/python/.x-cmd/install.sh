# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_pkg_python_unpack(){
    case "$version" in
    pypy*)
        local unpack_dir="$___X_CMD_PKG_DOWNLOAD_PATH/$name/$version"
        local tgt="$___X_CMD_PKG_INSTALL_PATH/$name/$version"
        local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$name/$version.$file_suffix"
        x uz "$ball" "$unpack_dir" 1>/dev/null || {
                pkg:warn "Fail to unzip $ball"
            }
        x rmrf "$tgt"; mkdir -p "$tgt"
        pkg:debug "Moving $unpack_dir to $tgt"
        mv -f "$unpack_dir"/*/* "$tgt"
        x rmrf "$unpack_dir"
    ;;

    py*)
        local tgt="$___X_CMD_PKG_INSTALL_PATH/$name/$version"
        mkdir -p "$tgt"
        cp -r $ball $tgt
        local archive_path="$___X_CMD_PKG_INSTALL_PATH/$name/$version/$version.$file_suffix"
        chmod +x "${archive_path}" && \
        "${archive_path}" -b -u -p "${archive_path%/*}" 1>/dev/null
        [ $? = 0 ] || {
            pkg:error "Fail to unpack python $version."; return 1
            }
        pkg:info "Finish python $version unpack."
        ;;

    esac
}

___x_cmd_pkg_python_unpack


