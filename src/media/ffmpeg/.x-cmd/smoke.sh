pkg:info "ffmpeg"

x assert stdout eval '$___X_CMD_PKG_INSTALL_PATH/$name/$version/* -version 2>&1 | awk '\''NR==1{print $1} '\''' <<A
ffmpeg
A

