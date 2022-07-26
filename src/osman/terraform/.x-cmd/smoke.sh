pkg:info "terraform"

terraform_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/terraform.${osname}.{arch} -version' <<A
Terraform v1.2.2
on linux_amd64
A
}

terraform_test
