get_docToolchain_version(){
    curl https://api.github.com/repos/docToolchain/docToolchain/releases 2>/dev/null | x jo env .\* .tag_name -- 'if ! [ $tag_name = "ng-tag" ]; then
    printf "%s\n" "
$tag_name:
  linux/x64:
    url:
      internet: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
      cn: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
    sha:
  darwin/amd64:
    url:
      internet: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
      cn: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
    sha:
  darwin/arm64:
    url:
      internet: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
      cn: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
    sha:
  win/x64:
    url:
      internet: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
      cn: https://github.com/docToolchain/docToolchain/releases/download/$tag_name/docToolchain-${tag_name#v*}.zip
    sha:
    "
fi'
}

get_docToolchain_version | x yq -o json e -P