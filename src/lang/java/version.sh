# shellcheck shell=sh  #source
get_java_version(){
for platform in mingw64_nt_10 linuxarm64 linuxx64 darwinx64 darwinarm64 ; do

    curl "https://api.sdkman.io/2/candidates/java/${platform}/versions/all" 2>/dev/null | awk -v $platform '
          BEGIN{ RS=","} {
            gsub("mingw64_nt_10","win/x64",platform)
            gsub("linuxarm64","linux/arm64",platform)
            gsub("linuxx64","linux/x64",platform)
            gsub("darwinx64","darwin/x64",platform)
            gsub("darwinarm64","darwin/arm64",platform)
            print $0 "  "  platform }

    '

done  | sort -V -u -r | awk '{
        if(last != $1){
            print $1 ":"
        }
        print "  " $2 ":\n    sha:"
        last = $1
    }'
}

get_java_version | x yq -o json e -P