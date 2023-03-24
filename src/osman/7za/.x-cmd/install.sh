if ! [ -d "$___X_CMD_PKG_INSTALL_PATH/${name}/${version}" ]; then
    x mkdirp "$___X_CMD_PKG_INSTALL_PATH/$name/$version"
fi
cp -r $ball "$___X_CMD_PKG_INSTALL_PATH/$name/$version/7za.7z"

(
cd "$___X_CMD_PKG_INSTALL_PATH/$name/$version" || {
    pkg:error "Failed to cd to $___X_CMD_PKG_INSTALL_PATH/$name/$version"
    return 1
}
p7zd x "$___X_CMD_PKG_INSTALL_PATH/$name/$version/7za.7z"
)