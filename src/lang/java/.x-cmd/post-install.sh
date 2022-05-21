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
}

___x_cmd_pkg_java_unpack