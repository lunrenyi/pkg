pkg:info "kotlin"
x pkg activate java
kotlin_test(){
x assert stdout $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/kotlinc -version 2>&1 | awk ' NR==1{print $5}' <<A
"kotlinc"
A
}

kotlin_test $@
x pkg deactivate java