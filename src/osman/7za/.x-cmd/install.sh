if ! [ -d "$___X_CMD_PKG_INSTALL_PATH/$name/$version" ]; then
    mkdir "$___X_CMD_PKG_INSTALL_PATH/$name/$version"
fi
cp -r $ball "$___X_CMD_PKG_INSTALL_PATH/$name/$version/7za"

(
cd "$___X_CMD_PKG_INSTALL_PATH/$name/$version"
p7zd x "$___X_CMD_PKG_INSTALL_PATH/$name/$version/7za"
)