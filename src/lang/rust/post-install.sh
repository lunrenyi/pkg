___x_cmd_env_rust_copy_to_unpackdir()(
    local version="${1:?Provide a version}"
    cd "$unpack_dir"/* || return 1
    ./install.sh --destdir="../tmp" --prefix=/
    x rmrf "$PWD"
)

___x_cmd_env_rust_copy_to_unpackdir "$@"