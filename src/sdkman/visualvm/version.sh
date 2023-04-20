get_visualvm_version(){
    curl https://api.github.com/repos/oracle/visualvm/releases 2>/dev/null | x jo env .\* .tag_name -- '
    name=$( printf "%s" $tag_name | command awk '\''END{gsub("\\.", "",$0); printf("%s",$0)}'\'')
    printf "%s\n" "
$tag_name:
  linux/x64:
    url:
      internet: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
      cn: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
    sha:
  darwin/amd64:
    url:
      internet: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
      cn: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
    sha:
  darwin/arm64:
    url:
      internet: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
      cn: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
    sha:
  win/x64:
    url:
      internet: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
      cn: "https://github.com/oracle/visualvm/releases/download/$tag_name/visualvm_${name}.zip"
    sha:
    "'
}

get_visualvm_version | x yq -o json e -P