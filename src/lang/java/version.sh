# shellcheck shell=sh  #source
get_java_version(){
for platform in mingw64_nt_10 linuxarm64 linuxx64 darwinx64 darwinarm64 ; do

    curl "https://api.sdkman.io/2/candidates/java/${platform}/versions/all" 2>/dev/null | awk -v platform=$platform '
          BEGIN{ RS=","} { print $0 "  "  platform }
    '

done  | sort -V -u -r | awk '{
        if(last != $1){
            print $1 ":"
        }
        print "  " $2 ":\n    sha:"
        last = $1
    }'
}

if ! [ -f tmp/a ] ; then
    mkdir tmp
    get_java_version > tmp/a
fi
cat tmp/a | x yq -o json e -P