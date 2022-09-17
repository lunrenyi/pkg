pkg:info "go"

go_test(){
x assert stdout eval '$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/go version | awk '\'' {print $3}'\'' '<<A
go1.18.2
A
}

go_test