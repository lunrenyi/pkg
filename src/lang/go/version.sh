# shellcheck shell=sh disable=SC2039,SC2142,SC3043 #source

get_info_to_yml(){
    awk '{
        if (match($0, "<td class=\"filename\"><a class=\"download[^>]+>"  version "[^<]" )) {
            if ($0 ~ "src") next
            _osarch = substr($0, RSTART+RLENGTH)
            gsub(/\.tar|\.gz|\.pkg|\.7z|\.exe|\.msi|\.zip|<\/a><\/td>/, "",_osarch)
            _osarch_list= (_osarch_list != "") ? _osarch_list "," _osarch : _osarch
        }
        else if ($0 ~ "</table>") {
            print unique(_osarch_list )
            _osarch_list=""
            version=""
        }
        else if ($0 ~ "<div class=\"collapsed\">") INFO_VERSION = 1
        else if ($0 ~ "<div class=\"expanded\">") INFO_VERSION = 0
        else if (INFO_VERSION == 1) {
            if (match($0, ">go[^ ]+")) {
                version =  substr($0, RSTART+1, RLENGTH-1)
                print version ":"
            }
        } else next
    }
    function unique(line,       lastvalue, arr, l, _, i){
        l = split(line, arr, ",")
        for(i = 1; i <= l; i++){
            if(arr[i] != lastvalue){
                _ = (_ != "") ? _ "\n  " arr[i] ":\n    sha:" : "  " arr[i] ":\n    sha:"
            }
            lastvalue = arr[i]
        }
        return _
    }'
}

get_go_version(){
    curl "https://golang.google.cn/dl/" 2>/dev/null | get_info_to_yml
}

get_go_version | x yq -o json e -P