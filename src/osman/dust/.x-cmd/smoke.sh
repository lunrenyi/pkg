pkg:info "dust"

dust_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval /home/mnnna/.x-cmd/.tmp/pkg/installed/$name/$version/dust.${osname}.${arch} -V' <<A
Dust 0.6.0
A
}
dust_test
