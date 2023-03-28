# shellcheck shell=sh disable=SC2154,SC2115
___x_cmd_helm_activate(){
    if ! [ -f "$___X_CMD_PKG_BIN_PATH/$name" ]; then
        x os name_
        case "$___X_CMD_OS_NAME_" in
            linux)   command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/linux-amd64/$name"  "$___X_CMD_PKG_BIN_PATH/$name" 2>/dev/null
                ;;
            darwin)   command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/darwin-amd64/$name"  "$___X_CMD_PKG_BIN_PATH/$name" 2>/dev/null
                ;;
            win)   command ln -s "$___X_CMD_PKG_INSTALL_PATH/$name/$version/windows-amd64/$name"  "$___X_CMD_PKG_BIN_PATH/$name" 2>/dev/null
                ;;
        esac
    fi


}
___x_cmd_helm_activate