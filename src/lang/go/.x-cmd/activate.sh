# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_go_activate(){
    x path add_existed_folder "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"

    # if [ "${}" != 'system' ] ; then
	#     if [ "unset" = "${GOROOT:-unset}" ] ; then
	#         export GOROOT=$___X_CMD_PKG_INSTALL_PATH/go
	#     fi
	#     if [ "unset" = "${GOPATH:-unset}" ] ; then
	#         export GOPATH=$___X_CMD_PKG_INSTALL_PATH/packages
	#     fi
    # fi
}

___x_cmd_go_activate