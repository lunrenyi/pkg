pkg:info "openssl"

openssl_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout eval '$___X_CMD_PKG_INSTALL_PATH/openssl/3.0.0/openssl.${osname}.${arch} version ' <<A
OpenSSL 3.0.0 7 sep 2021 (Library: OpenSSL 3.0.0 7 sep 2021)
A
}
openssl_test
