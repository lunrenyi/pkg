get_kcctl_version(){
    curl https://api.github.com/repos/kcctl/kcctl/releases 2>/dev/null | x jo env .\* .tag_name -- 'printf "%s\n" "
$tag_name:
  linux/x64:
    url:
      internet: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-linux-x86_64.zip"
      cn: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-linux-x86_64.zip"
    sha:
  linux/arm64:
    url:
      internet: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-linux-x86_64.zip"
      cn: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-linux-x86_64.zip"
    sha:
  darwin/amd64:
    url:
      internet: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-osx-x86_64.zip"
      cn: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-osx-x86_64.zip"
    sha:
  darwin/arm64:
    url:
      internet: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-osx-x86_64.zip"
      cn: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-osx-x86_64.zip"
    sha:
  win/x64:
    url:
      internet: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-windows-x86_64.zip"
      cn: "https://github.com/kcctl/kcctl/releases/download/$tag_name/kcctl-${tag_name#?}-windows-x86_64.zip"
    sha:
    "'
}

get_kcctl_version | x yq -o json e -P