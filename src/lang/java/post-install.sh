___x_cmd_env_java_copy_to_unpackdir(){
	if [ "$(x os name)" = "darwin" ]; then
		env:debug "Copying " "$unpack_dir"/*/Contents/Home/* " to " "$unpack_dir"/*/
		mv "$unpack_dir"/*/Contents/Home/* "$unpack_dir"/*/
		x rmrf "$unpack_dir"/*/Contents
	fi
}

___x_cmd_env_java_copy_to_unpackdir 