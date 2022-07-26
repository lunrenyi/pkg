pkg:info "dust"

dust_test(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval /home/mnnna/.x-cmd/.tmp/pkg/installed/curl/7.83.1-DEV/dust.linux.x64' <<A
Dust 0.6.0
A
}
dust_test
x pkg uninstall dust