pkg:info "terraform"

terraform_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/terraform -version' <<A
Terraform v1.2.2
on linux_amd64

Your version of Terraform is out of date! The latest version
is 1.2.5. You can update by downloading from https://www.terraform.io/downloads.html
A
}

terraform_test
