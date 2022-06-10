# shellcheck shell=sh  #source

get_scala_version(){
    curl https://www.scala-lang.org/download/all.html 2>/dev/null | awk ' match($0,"Scala " "[0-9].[0-9.]+[-0-9A-Za-z]*"){a = substr($0,RSTART+6,RLENGTH-6)
        print a":\n  " "linux/x64:\n    sha:"
        print a":\n  " "linux/x32:\n    sha:"
        print a":\n  " "darwin/x64:\n    sha:"
        print a":\n  " "win/64:\n    sha:"
        print a":\n  " "darwin/amd64:\n    sha:"
        print a":\n  " "win/x32:\n    sha:"
    } '

    # curl "http://distfiles.macports.org/scala3/"  2>/dev/null | awk 'match($0,"scala3-3.0.2"){a = substr($0,RSTART+7,RLENGTH-7)
    #     print a"(cn)"":\n  " "linux/x64:\n    sha:"
    #     print a"(cn)"":\n  " "linux/x32:\n    sha:"
    #     print a"(cn)"":\n  " "darwin/x64:\n    sha:"
    #     print a"(cn)"":\n  " "win/64:\n    sha:"
    #     print a"(cn)"":\n  " "darwin/amd64:\n    sha:"
    #     print a"(cn)"":\n  " "win/x32:\n    sha:"
    # }'



}

get_scala_version | x yq -o json e -P