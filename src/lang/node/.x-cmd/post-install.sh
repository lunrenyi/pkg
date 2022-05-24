___x_cmd_pkg_node_unpack(){
    if [ $(x os name) = "win" ] ; then
    (
        local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version.$file_suffix"
        local unpack_dir="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version"
        local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"

        mkdir -p "$tgt"
        unzip -d "$tgt" "$ball" || {
        pkg:warn "Fail to unzip $ball"
    }

        cd "${tgt}"/*/ && chmod +x node.exe npm npx
        # mkdir -p "${unpack_dir}/tmp/bin"
        # mv -f "$PWD"/* "${unpack_dir}/tmp/bin"
        # x rmrf "$PWD"
    )
    else
        ___x_cmd_pkg_install___unzip "$pkg_name" "$version" "$osarch"
    fi
}

___x_cmd_pkg_node_unpack
