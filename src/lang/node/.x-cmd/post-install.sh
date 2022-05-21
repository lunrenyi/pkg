___x_cmd_env_node_copy_to_unpackdir(){
    if [ $(x os name) = "win" ] ; then
    (
        cd "${unpack_dir}"/*/ && chmod +x node.exe npm npx
        mkdir -p "${unpack_dir}/tmp/bin"
        mv -f "$PWD"/* "${unpack_dir}/tmp/bin"
        x rmrf "$PWD"
    )
    else
        ___x_cmd_pkg_install___unzip "$pkg_name" "$version" "$osarch"
    fi
}

___x_cmd_env_node_copy_to_unpackdir
