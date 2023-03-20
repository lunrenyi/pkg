# shellcheck shell=sh  #source


# | sort -V -u -r | awk '$4 !~ /(dmg)$/{
get_julia_version_cn(){
    curl https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/versions.json 2>/dev/null | x jo env .\*.files.\* .version .os .arch .url .sha256 -- 'echo "$version $os $arch $url $sha256"' \
    | sort -V -u -r | awk '{
        file_suffix = ($2 != "winnt") ? "tar.gz" : "exe"
        gsub("exe","tar.gz",file_suffix)
        file_suffix = ($2 == "mac") ? "tar.gz" : file_suffix
        version = substr( $1, 1, 3)
        osarch = $2 "/" $3
        gsub("winnt", "win", osarch)
        gsub("mac", "darwin", osarch)
        gsub("x86_64", "x64", osarch)
        gsub("i686", "x86", osarch)
        gsub("aarch64", "arm64", osarch)
        gsub("x86_64", "x64", $3)
        gsub("i686", "x86", $3)




        _osarch = $2  $3
        if ( _osarch == "winnt-x64" ) _osarch = "win64"
        else if ( _osarch == "winntx86"  ) _osarch = "win32"
        else if ( _osarch == "linuxx64"  ) _osarch = "linux-x86_64"
        else if ( _osarch == "linuxx86"  ) _osarch = "linux-i686"
        else if ( _osarch == "linuxarm64"  ) _osarch = "linux-arm"
        else if ( _osarch == "macx64"  )   _osarch = "mac64"
        else if ( _osarch == "armx64"  )   _osarch = "macaarch64"
        else if ( _osarch == "linuxaarch64"  )   _osarch = "linux-aarch64"


        if ($1 != last_version) {
            last_version = $1
            print $1 ":\n  " osarch ":\n    url:\n      internet: " $4 "\n      cn: " "https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/" $2 "/" $3  "/" version "/julia-" $1 "-" _osarch "." "tar.gz"
        } else {
            print "  " osarch ":\n    url:\n      internet: " $4 "\n      cn: " "https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/" $2 "/" $3 "/" version "/julia-" $1 "-" _osarch "." "tar.gz"
        }
    }
    '
}
get_julia_version_cn  | x yq -o json e -P

