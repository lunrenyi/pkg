# shellcheck shell=sh disable=SC2039,SC2142,SC3043 #source
if ! [ -f tmp/a ] ; then
    mkdir tmp
    curl https://golang.google.cn/dl/ 2>/dev/null > tmp/a
fi

get_info_to_yml(){
    awk 'match($0, "/dl/go[0-9.]+.(windows|linux|darwin|freebsd)-(amd64|arm64|armv6l|ppc64l|386|s390x|ppc64le)" ) {
        all = substr($0, RSTART+6, RLENGTH-6)
        match($0, "/dl/go[0-9.]+")
        version = substr($0, RSTART+6, RLENGTH-7)
        print version " " substr(all, RLENGTH-5)
    }
    ' | sort -V -u -r | awk '{
        if(last != $1){
            print $1 ":"
        }
        print "  " $2 ":\n    sha:"
        last = $1
    }'
}

get_go_version(){
    cat tmp/a | get_info_to_yml
}

get_go_version | x yq -o json e -P