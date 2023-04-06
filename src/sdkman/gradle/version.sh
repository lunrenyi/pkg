get_gradle_version(){
    curl https://gradle.org/release-checksums/ 2>/dev/null | command awk '
        {
            if(match($0 , "<p><a name=\"[0-9.]+\"><\\/a><\\/p>")) {
                version = substr($0,RSTART+12, RLENGTH-22)
                print version
            }
            if($0 ~ "^Binary-only.*") {
                print $0

            }
        }
    '
}
get_gradle_version