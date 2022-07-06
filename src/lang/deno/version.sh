# shellcheck shell=sh #source
get_deno_version(){
  curl https://api.github.com/repos/denoland/deno/releases 2>/dev/null | x jo env .\* .name -- 'printf "%s\n" "
${name}:
  linux/x64:
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

get_deno_version | x yq -o json e -P
