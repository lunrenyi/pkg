# shellcheck shell=sh  #source


get_julia_version_cn(){
    curl https://mirrors.tuna.tsinghua.edu.cn/julia-releases/bin/versions.json 2>/dev/null | x jo env .\*.files.\* .version .os .arch .url .sha256 -- 'echo "$version $os/$arch" $url $sha256' \
    | sort -V -u -r | awk '$3 !~ /(exe)$|(dmg)$/{
        if ($1 != last_version) {
            last_version = $1
            gsub("winnt", "win", $2)
            gsub("x86_64", "x64", $2)
            gsub("i686", "x86", $2)
            print $1 ":\n  " $2 ":\n    url:\n      cn: " $3 "\n    sha256: " $4
        } else {
            gsub("winnt", "win", $2)
            gsub("x86_64", "x64", $2)
            gsub("i686", "x86", $2)
            print "  " $2 ":\n    url:\n      cn: " $3 "\n    sha256: " $4
        }
    }
    '
}
get_julia_version_cn | x yq -o json e -P