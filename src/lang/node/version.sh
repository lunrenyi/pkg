# shellcheck shell=sh  #source
if ! [ -f tmp/a ] ; then
    mkdir tmp
    curl https://nodejs.org/dist/index.json 2>/dev/null > tmp/a
fi

get_node_version(){
    cat tmp/a | x jo env .\* .version .files .security  -- 'echo "$version
$security
$files"'
}

get_node_version | awk '
BEGIN{
    DATA_VERSION = 0
    DATA_SECURITY = 1
    DATA_FILES = 2
    DATA_STATUS = DATA_VERSION
}
DATA_STATUS==DATA_VERSION{
    version =  $0 ":\n"
    DATA_STATUS = DATA_SECURITY
    next
}
DATA_STATUS==DATA_SECURITY{
    security = $0 "\n"
    DATA_STATUS = DATA_FILES
    next
}
DATA_STATUS==DATA_FILES{
    DATA_STATUS = DATA_VERSION
    if ($0 == "[src]") {
        version=""
        security=""
        next
    }
    line=substr($0,2 ,length($0)-2 )
    gsub(/src,|-tar|-pkg|-7z|-exe|-msi|-zip|headers,/, "",line)
    line = unique(line)
    data = data version "  security: "security "  " line "\n"
    next
}
END{
    print data
}

function unique(line,       lastvalue, arr, l, _, i){
    l = split(line, arr, ",")
    for(i = 1; i <= l; i++){
        if(arr[i] != lastvalue){
            _ = (_ != "") ? _ "\n  " arr[i] ":\n    sha:" : arr[i] ":\n    sha:"
        }
        lastvalue = arr[i]
    }
    return _
}

'| x yq -o json e -P
