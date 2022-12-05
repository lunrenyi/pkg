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
        if chmod +x "${archive_path}" && "${archive_path}" -b -u -p "${archive_path%/*}" | awk -v col="$COLUMNS" '
        BEGIN{
            max_len = 10
            i = 0;
            for (k = 0; k < col; k++) {
                blank = blank " "
            }
        }

        function refresh(){
            for (i = 0; i < max_len && i < NR; i++) {
                printf("\r" blank "\r\033[A")
            }
        }

        {
            if (NR <= max_len) {
                print "==> " $0
                arr[i] = $0
            } else {
                refresh()
                for (j = i-max_len+1; j <= i; j++) {
                    arr[i] = $0
                    print "==> " arr[j]
                }
            }
            i++
        }

        END{ refresh() }'; then
            pkg:info "Finish python $version unpack."
        else
            pkg:error "Fail to unpack python $version."; return 1

        fi
        ;;

    esac
}

___x_cmd_pkg_python_unpack