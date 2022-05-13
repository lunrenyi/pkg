if ! [ -f tmp/scala ] ; then
    mkdir tmp
    curl https://www.scala-lang.org/download/all.html > tmp/scala
fi

get_scala_version(){
    cat tmp/scala | awk ' match($0,"Scala " "[0-9].[0-9.]+[-0-9A-Za-z]*"){print substr($0,RSTART+6,RLENGTH-6) ": " "\t\n sha:" } '
}

get_scala_version | x yq -o json e -P