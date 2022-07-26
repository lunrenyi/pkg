pkg:info "nact"
ncat_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval /home/mnnna/.x-cmd/.tmp/pkg/installed/ncat/7.92/nact.${osname}.${arch}' <<A
Ncat: Version 7.92 ( https://nmap.org/ncat )
Ncat: You must specify a host to connect to. QUITTING
A
}

ncat_test

x pkg uninstall nact