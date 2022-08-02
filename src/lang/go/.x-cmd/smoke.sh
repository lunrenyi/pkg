pkg:info "go"

go_test(){
x assert stdout '$___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/gofmt -h 2>&1 | awk '\''NR==1{print $2}'\'' '<<A
gofmt
A
}

go_test