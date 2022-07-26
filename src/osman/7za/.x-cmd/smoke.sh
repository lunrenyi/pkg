pkg:info "7za"
7za_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/7za.${osname}.${arch} -version' <<A

7-Zip (a) [64] 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
p7zip Version 16.02 (locale=C.UTF-8,Utf16=on,HugeFiles=on,64 bits,6 CPUs x64)



Command Line Error:
The command must be specified
A
}
7za_test
