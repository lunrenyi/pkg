get_kscript_version(){
    curl https://api.github.com/repos/kscripting/kscript/releases 2>/dev/null | x jo env .\* .tag_name -- 'if ! [ $tag_name = "ng-tag" ]; then
    printf "%s\n" "
$tag_name:
  linux/x64:
    url:
      internet: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
      cn: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
    sha:
  darwin/amd64:
    url:
      internet: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
      cn: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
    sha:
  darwin/arm64:
    url:
      internet: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
      cn: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
    sha:
  win/x64:
    url:
      internet: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
      cn: "https://github.com/kscripting/kscript/releases/download/$tag_name/kscript-${tag_name#?}-bin.zip"
    sha:
    "
fi'
}

get_kscript_version | x yq -o json e -P