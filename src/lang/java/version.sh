# shellcheck shell=sh  #source
get_java_version(){
for platform in mingw64_nt_10 linuxarm64 linuxx64 darwinx64 darwinarm64 ; do

    curl "https://api.sdkman.io/2/candidates/java/${platform}/versions/all" 2>/dev/null | awk -v platform=$platform '
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

    curl "https://www.injdk.cn/" 2/>dev>null | awk '
        match($0,"oraclejdk" "/" "[0-9]*" "/" "jdk-[0-9._a-z]+" "[-]?" "[0-9a-zA-Z_]+" "." "[0-9a-z.]+"){a = substr($0,RSTART,RLENGTH)
        split(a,b,"/")
        c = substr(b[3],5)
        gsub("_","-",c)
        gsub("8u301","8",c)
        split(c,d,"-")
        version = d[1]
        os = d[2]
        arch = d[3]

        print d[1]"(oraclejdk):\n  " d[3]"/"d[2] ":\n    sha:"
        }
    '


}




get_java_version | x yq -o json e -P