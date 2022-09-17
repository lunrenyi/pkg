pkg:info "mosquitto"
mosquitto_test(){
    chmod -R +x "$___X_CMD_PKG_INSTALL_PATH/$name/$version"
    x assert stdout eval ' $___X_CMD_PKG_INSTALL_PATH/$name/$version/mosquitto -h 2>&1 | awk '\''NR==1{print $1} '\'' ' <<A
mosquitto
A
}

mosquitto_test