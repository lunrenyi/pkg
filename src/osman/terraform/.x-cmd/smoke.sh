pkg:info "terraform"

terraform_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout eval '$___X_CMD_PKG_INSTALL_PATH/$name/$version/terraform -version | awk '\''NR==1{print $0} '\'' ' <<A
Terraform v1.2.2
A
}

terraform_test
