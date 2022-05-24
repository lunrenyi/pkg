___x_cmd_pkg_java_unpack(){

	case "$version" in
		*-open|*-sapmchn|*-trava|*-oracle|*-grl|*-gln|*-amzn|*-nik|*-tem)
			if [ "$(x os name)" = "darwin" ]; then
				pkg:debug "Copying " "$unpack_dir"/*/Contents/Home/* " to " "$unpack_dir"/*/
				mv "$unpack_dir"/*/Contents/Home/* "$unpack_dir"/*/
				x rmrf "$unpack_dir"/*/Contents
			fi
			;;
	esac

	if [ "$(x os name)" = "linux" ] || [ "$(x os name)" = "win" ]; then
		___x_cmd_pkg_install___unzip "$pkg_name" "$version" "$osarch"
	fi

	# if [ "$(x os name)" = "win" ]; then
	# 	local bin_path
    # 	bin_path="$(___x_cmd_pkg_xbin_path "$pkg_name" "$version")"
    # 	if [ -x "$bin_path" ]; then
    # 	    return 0
    # 	fi
    # 	pkg:debug "bin_path: $bin_path"

    # 	local file_suffix
    # 	___x_cmd_pkg___attr "$pkg_name" "$version" "$osarch" file_suffix
    # 	local ball="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version.$file_suffix"
    # 	local unpack_dir="$___X_CMD_PKG_DOWNLOAD_PATH/$pkg_name/$version"
    # 	local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"

    # 	pkg:info "Unpack: $ball to $unpack_dir"
    # 	unzip -d "$unpack_dir" "$ball" || {
    # 	    pkg:warn "Fail to unzip $ball"
    # 	}
    # 	x rmrf "$tgt" && mkdir -p "$tgt"
    # 	pkg:debug "Moving $unpack_dir to $tgt"
    # 	mv -f "$unpack_dir"/*/* "$tgt"
    # 	# x rmrf "$unpack_dir"
	# fi
}

___x_cmd_pkg_java_unpack