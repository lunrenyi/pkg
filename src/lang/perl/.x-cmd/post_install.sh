# shellcheck shell=sh disable=SC2039,SC1090,SC3043,SC2263
___x_cmd_pkg_perl_unpack(){
    local tgt="$___X_CMD_PKG_INSTALL_PATH/$pkg_name/$version"

    pkg:info "Unpack: $ball to $tgt"
    x uz "$ball" "$tgt"  || {
        pkg:warn "Fail to unzip $ball"
    }
    (
        cd $tgt
        ./Configure -des -Dprefix=$HOME/localperl
        make
        make test
        make install
    )
}

___x_cmd_pkg_perl_unpack
