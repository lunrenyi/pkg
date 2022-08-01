pkg:info "tig"

tig_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

if [ $osname = "darwin" ]; then
    x assert stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/tig.${osname}.${arch} -v' <<A
tig version 2.5.5
ncurses version 5.7.20081102
PCRE2 version 10.40 2022-04-14
A
else
    x assert stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/tig.${osname}.${arch} -v' <<A
tig version 2.5.5
ncursesw version 6.3.20211021
A
fi
}

tig_test

