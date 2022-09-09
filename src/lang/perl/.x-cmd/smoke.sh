pkg:info "perl"
perl_test(){
x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/perl -v 2>&1 | awk ' NR==2{print $3 $4} ' <<A
perl5,
A
}
perl_test


