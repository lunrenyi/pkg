# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_pkg_kotlin_post_install(){

	___x_cmd_pkg_install___unzip "$name" "$version" "$osarch"

	local unpack_dir="${___X_CMD_PKG_INSTALL_PATH}/${name}/${version}"

			if [ "$(x os name)" = "darwin" ]; then
				pkg:debug "Copying " "$unpack_dir"/Contents/Home/* " to " "$unpack_dir"/
				mv "$unpack_dir"/Contents/Home/* "$unpack_dir"/
				x rmrf "$unpack_dir"/Contents
			fi
}

___x_cmd_pkg_kotlin_post_install