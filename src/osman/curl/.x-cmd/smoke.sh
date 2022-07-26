pkg:info "curl"
curl_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/curl.${osname}.${arch} -V' <<A
curl 7.83.1-DEV (aarch64-unknown-linux-musl) libcurl/7.83.1-DEV LibreSSL/3.5.2 zlib/1.2.12 nghttp2/1.47.0
Release-Date: [unreleased]
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS HSTS HTTP2 HTTPS-proxy IPv6 Largefile libz NTLM NTLM_WB SSL UnixSockets
A
}
curl_test
