pkg:info "magick"
magick_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/magick.${osname}.${arch} -version' <<A
    Version: ImageMagick 7.1.0-24 Q16-HDRI x86_64 2022-02-06 https://imagemagick.org
    Copyright: (C) 1999-2021 ImageMagick Studio LLC
    License: https://imagemagick.org/script/license.php
    Features: Cipher DPC HDRI OpenMP(4.5)
    Delegates (built-in):
    Compiler: gcc (10.3)
A
}
magick_test
x pkg uninstall magick
