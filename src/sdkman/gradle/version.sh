get_gradle_version(){
    curl https://gradle.org/release-checksums/ 2>/dev/null | command awk '
        match($0 , "<p><a name=\"[0-9.]+\"><\\/a><\\/p>"){
                version = substr($0,RSTART+12, RLENGTH-22)
        }
        $0 ~ "^Binary-only.*"{
                if(match($0, "<code>[0-9a-z]+<\\/code>")) sha256 = substr($0,RSTART+6, RLENGTH-13)
                print  version ":\n  " "darwin/arm64:\n    " "sha256:  " sha256
                print "  darwin/x64:\n    " "sha256:  " sha256
                print "  linux/arm64:\n    " "sha256:  " sha256
                print "  linux/x64:\n    " "sha256:  " sha256
                print "  win/x64:\n    " "sha256:  " sha256
        }
    '
}
get_gradle_version |  x yq -o json e -P