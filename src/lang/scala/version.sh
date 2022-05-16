# shellcheck shell=sh  #source
if ! [ -f tmp/a ] ; then
    mkdir tmp
    curl https://www.scala-lang.org/download/all.html 2>/dev/null > tmp/a
fi

get_scala_version(){
    cat tmp/a | awk ' match($0,"Scala " "[0-9].[0-9.]+[-0-9A-Za-z]*"){print substr($0,RSTART+6,RLENGTH-6) ": " "\t\n sha:" } '
}

get_scala_version | x yq -o json e -P