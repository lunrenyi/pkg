candidate="${1:-java}"
get_java_version(){
for platform in mingw64_nt_10 linuxarm64 linuxx64 darwinx64 darwinarm64 ; do
    echo $platform
    curl "https://api.sdkman.io/2/candidates/${candidate}/${platform}/versions/all" 2>/dev/null | awk -v platform=$platform '
          BEGIN{ RS=","} { print $0 ":\n  "  platform "\n    sha:"}
    '
done
}

get_java_version