# shellcheck shell=sh  #source

# v1.45.2: {}
# v1.56.1: {}
# v1.60.0: {}

get_rust_version(){
    curl https://api.github.com/repos/rust-lang/rust/releases 2>/dev/null | x jo env .\* .name -- 'printf "%s\n" "
${name#*Rust}:
  linux/x64:
    sha:
  linux/arm64:
    sha:
  darwin/amd64:
    sha:
  darwin/x86:
    sha:
  win/x64:
    sha:
  darwin/arm64:
    sha:
    "'
}

get_rust_version | x yq -o json e -P

