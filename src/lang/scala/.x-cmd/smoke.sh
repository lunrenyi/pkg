pkg:info "scala"

scala_test(){
x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/scalac -version' <<A
Scala compiler version 3.1.2 -- Copyright 2002-2022, LAMP/EPFL
A
}
scala_test