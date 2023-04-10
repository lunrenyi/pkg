get_jarviz_version(){
    curl https://jbake.org/download.html 2>/dev/null | command awk '
        match($0,"<p class=\"tableblock\">" "v[0-9.]+" "<\\/p><\\/td>"){
                version = substr($0, RSTART+22, RLENGTH-31)
                print version":"
            }

        match($0,"<p class=\"tableblock\">" "[a-z0-9]+" "<\\/p><\\/td>"){
                sha256 = substr($0, RSTART+22, RLENGTH-31)
            }
        match($0,"<a href=\"" "https:/.*zip\"" ">GitHub<\\/a>"){
                url =  substr($0, RSTART+9, RLENGTH-21)
                print "  linux/x64:\n" "    url:\n" "      internet: " url "\n" "      cn: " url
                print "    sha: " sha256
                print "  linux/arm64:\n" "    url:\n" "      internet: " url "\n" "      cn: " url
                print "    sha: " sha256
                print "  darwin/amd64:\n" "    url:\n" "      internet: " url "\n" "      cn: " url
                print "    sha: " sha256
                print "  darwin/arm64:\n" "    url:\n" "      internet: " url "\n" "      cn: " url
                print "    sha: " sha256
                print "  win/x64:\n" "    url:\n" "      internet: " url "\n" "      cn: " url
                print "    sha: " sha256
            }

    '
}

get_jarviz_version | x yq -o json e -P
