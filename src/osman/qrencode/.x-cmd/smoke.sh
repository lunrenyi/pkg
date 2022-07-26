pkg:info "qrencode"

qrencode_test(){
        local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/qrencode.${osname}.${arch} -V' <<A
qrencode version 4.1.1
Copyright (C) 2006-2017 Kentaro Fukuchi
A
}
qrencode_test