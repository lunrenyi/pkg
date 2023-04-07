
get_grails_version(){
    curl https://api.github.com/repos/grails/grails-core/releases 2>/dev/null | x jo env .\* .tag_name -- 'printf "%s\n" "
$tag_name:
  linux/x64:
    url:
      internet: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
      cn: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
    sha:
  darwin/amd64:
    url:
      internet: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
      cn: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
    sha:
  darwin/arm64:
    url:
      internet: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
      cn: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
    sha:
  win/x64:
    url:
      internet: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
      cn: https://github.com/grails/grails-core/releases/download/$tag_name/grails-${tag_name#v*}.zip
    sha:
    "'
}

get_grails_version | x yq -o json e -P
