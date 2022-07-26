pkg:info "nmap"

nmap_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval /home/mnnna/.x-cmd/.tmp/pkg/installed/ncat/7.92/nmap.${osname}.${arch} -V' <<A
Nmap version 7.92 ( https://nmap.org )
Platform: x86_64-unknown-linux-gnu
Compiled with: nmap-liblua-5.3.5 openssl-3.0.0 nmap-libssh2-1.9.0 nmap-libz-1.2.11 nmap-libpcre-7.6 nmap-libpcap-1.9.1 nmap-libdnet-1.12 ipv6
Compiled without:
Available nsock engines: epoll poll select
A
}

nmap_test

