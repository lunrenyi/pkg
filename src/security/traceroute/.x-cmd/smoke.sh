pkg:info "traceroute"
traceroute_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval /home/mnnna/.x-cmd/.tmp/pkg/installed/$name/$version/traceroute.${osname}.${arch} -V' <<A
Modern traceroute for Linux, version 2.1.0
Copyright (c) 2016  Dmitry Butskoy,   License: GPL v2 or any later
A
}

traceroute_test

