___x_cmd_env_python_unpack(){
    local version="${1:?Provide python version}"
    local miniconda_filename
    local compression
    compression=$(___x_cmd_env_python_compression)

    local versions_path="$___X_CMD_ENV_PATH/python/versions"
    mkdir -p "${versions_path}"
    local archive_path="$___X_CMD_ENV_PATH/python/archive/python-$version.$compression"
    chmod +x "${archive_path}" && \
        "${archive_path}" -b -u -p "${versions_path}/$version" 1>&2
}

___x_cmd_env_python_unpack "$@"