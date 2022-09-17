pkg:info "scala"

scala_test(){
x env try java
x assert stdout eval ' $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/scalac -version 2>&1 | awk '\'' NR==1{print $1 $4} '\'' ' <<A
Scala3.1.2
A
}
scala_test