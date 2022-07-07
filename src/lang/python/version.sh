# shellcheck shell=sh #source

get_py_version(){
curl https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/ 2>/dev/null | awk 'match($0,"Miniconda3" "-" "[py0-9_.]*" "-" "[A-Za-z]+" "-" "[A-Za-z0-9_]+") { a = substr($0,RSTART,RLENGTH)

  split(a,b,"-")
  gsub("Linux", "linux", b[3])
  gsub("Windows", "win", b[3])
  gsub("MacOSX", "darwin", b[3])
  gsub("x86_64", "x64", b[4])
  gsub("-Minicoda3","",b[2])
  gsub(/^3.[0-9]*.[0-9]*/,"",b[2])
  gsub(/^2.[0-9]*.[0-9]*/,"",b[2])
  if(b[2] != ""){print b[2] ":\n  " b[3] "/" b[4] ":\n    sha:"}
}'

curl -H "Accept-Encoding: gzip" https://downloads.python.org/pypy/ 2>/dev/null | gunzip | more | awk ' match($0, "pypy[0-9.]+" "-" "v[0-9.]+" "-" "[a-z0-9]+" ){
  a = substr($0,RSTART,RLENGTH)
  split(a,b,"-")
  gsub("linux64","linux/x64",b[3])
  gsub("linux32","linux/x32",b[3])
  gsub("win32","win/x32",b[3])
  gsub("win64","win/x64",b[3])
  gsub("aarch64","darwin/amd64",b[3])
  gsub("osx64","darwin/x64",b[3])

  if(b[3] != "src"){print b[1] "-" b[2] ":\n  " b[3] ":\n    sha:" }
} '
}

get_py_version | x yq -o json e -P
