get_micronaut_version(){
    curl https://api.github.com/repos/micronaut-projects/micronaut-starter/releases 2>/dev/null | x jo env .\* .tag_name -- 'printf "%s\n" "
$tag_name:
  linux/x64:
    sha:
  linux/arm64:
    sha:
  darwin/amd64:
    sha:
  darwin/arm64:
    sha:
  win/x64:
    sha:
    "'
}

get_micronaut_version | x yq -o json e -P