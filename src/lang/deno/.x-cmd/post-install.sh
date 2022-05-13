___x_cmd_env_deno_copy_to_unpackdir(){
    mkdir -p "$unpack_dir/tmp/bin"
    mv "$unpack_dir/deno" "$unpack_dir/tmp/bin/deno"
    env:info "Copy to $unpack_dir/tmp/bin/deno"
}

___x_cmd_env_deno_copy_to_unpackdir 