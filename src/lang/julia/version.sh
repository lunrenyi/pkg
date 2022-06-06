# shellcheck shell=sh  #source


get_julia_version_cn(){
    curl https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/versions.json 2>/dev/null | x jo env .\*.files.\* .version .os .arch .url .sha256 -- 'echo "$version $os $arch $url $sha256"' \
    | sort -V -u -r | awk '$4 !~ /(dmg)$/{
        file_suffix = ($2 != "winnt") ? "tar.gz" : "exe"
        version = substr( $1, 1, 3)
        osarch = $2 "/" $3
        gsub("winnt", "win", osarch)
        gsub("x86_64", "x64", $3)
        gsub("i686", "x86", $3)
        osarch = $2 "/" $3

        _osarch = $2 "-" $3
        if ( _osarch == "winnt-x64" ) _osarch = "win64"
        else if ( _osarch == "winnt-x86"  ) _osarch = "win32"
        else if ( _osarch == "linux-x64"  ) _osarch = "linux-x86_64"
        else if ( _osarch == "linux-x86"  ) _osarch = "linux-i686"
        else if ( _osarch == "linux-arm64"  ) _osarch = "linux-arm"

        if ($1 != last_version) {
            last_version = $1
            print $1 ":\n  " osarch ":\n    url:\n      _: " $4 "\n      cn: " "https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/" $2 "/" $3  "/" version "/julia-" $1 "-" _osarch "." file_suffix "\n    sha256: " $5
        } else {
            print "  " osarch ":\n    url:\n      _: " $4 "\n      cn: " "https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/" $2 "/" $3 "/" version "/julia-" $1 "-" _osarch "." file_suffix "\n    sha256: " $5
        }
    }
    '
}
get_julia_version_cn | x yq -o json e -P