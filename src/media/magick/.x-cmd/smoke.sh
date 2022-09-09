pkg:info "magick"

magick_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"
    x assert stdout  $___X_CMD_PKG_INSTALL_PATH/$name/$version/magick.${osname}.${arch} -version | awk 'NR==1{print $2 " " $3}' <<A
ImageMagick 7.1.0-24
A
}
magick_test

