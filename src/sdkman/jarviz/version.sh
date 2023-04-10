get_jarviz_version(){
    curl https://api.github.com/repos/kordamp/jarviz/releases 2>/dev/null | x jo env .\* .tag_name -- 'if ! [ $tag_name = "early-access" ]; then
    printf "%s\n" "
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
    "
    fi'
}

get_jarviz_version | x yq -o json e -P
