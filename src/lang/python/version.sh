# shellcheck shell=sh #source

get_py_version(){
curl https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/ 2>/dev/null | awk 'match($0,"Miniconda3" "-" "[0-9.]+" "-" "[A-Za-z]+" "-" "[A-Za-z0-9_]+") { a = substr($0,RSTART,RLENGTH)
  split(a,b,"-")
  print b[2] "-" b[1] ":\n  " b[3] "/" b[4] ":\n    sha:"
}'

curl -H "Accept-Encoding: gzip" https://downloads.python.org/pypy/ 2>/dev/null | gunzip | more | awk ' match($0, "pypy[0-9.]+" "-" "v[0-9.]+" "-" "[a-z0-9]+" ){
  a = substr($0,RSTART,RLENGTH)
  split(a,b,"-")
  b[3] = gensub("linux64","linuxx/x64","g",b[3])
  b[3] = gensub("linux32","linux/x32","g",b[3])
  b[3] = gensub("win32","win/x32","g",b[3])
  b[3] = gensub("win64","win/x64","g",b[3])
  b[3] = gensub("aarch64","darwin/amd64","g",b[3])
  b[3] = gensub("osx64","darwin/x64","g",b[3])

  if(b[3] != "src"){print b[2] "-" b[1] ":\n  " b[3] ":\n    sha:" }
} '
}

get_py_version | x yq -o json e -P
