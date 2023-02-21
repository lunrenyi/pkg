# shellcheck shell=dash #source
get_php_version(){
    curl http://php.p2hp.com/downloads.php 2>/dev/null | awk '{
      if( match($0, "^[ ]*PHP [0-9.]+")){
        print substr($0,RSTART+8,RLENGTH-8) ":\n"
        print "  linux/x64:\n    sha: null"
        print "  darwin/amd64:\n    sha: null"
        print "  darwin/x86:\n    sha: null"
        print "  win/x64:\n    sha: null"
        print "  darwin/arm64:\n    sha: null"
      }

    }'
}
get_php_version | x yq -o json e -P