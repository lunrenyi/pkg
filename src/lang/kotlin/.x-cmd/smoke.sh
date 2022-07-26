pkg:info "kotlin"

kotlin_test(){
x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/konanc -version' <<A
info: kotlinc-native 1.6.21 (JRE 18+36-2087)
Kotlin/Native: 1.6.21
A
}

kotlin_test $@
