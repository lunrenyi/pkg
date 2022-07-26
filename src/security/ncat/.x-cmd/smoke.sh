pkg:info "ncat"
ncat_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval /home/mnnna/.x-cmd/.tmp/pkg/installed/$name/$version/ncat.${osname}.${arch} --version' <<A
Ncat: Version 7.92 ( https://nmap.org/ncat )
A
}

ncat_test

