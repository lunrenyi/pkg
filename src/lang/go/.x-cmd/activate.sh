#shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_go_activate(){
    mkdir -p "$___X_CMD_PKG_INSTALL_PATH/Go_package"
    x path add_existed_folder "$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin"
	export GOPATH="$___X_CMD_PKG_INSTALL_PATH/Go_package"
}
___x_cmd_go_activate