if ! [ -f tmp/py_miniconda ] ; then
  mkdir tmp
  curl https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/ > "tmp/py_miniconda"
fi

if ! [ -f tmp/py_miniconda ] ; then
  mkdir tmp
  curl -H "Accept-Encoding: gzip" https://downloads.python.org/pypy/ | gunzip | more > "tmp/py_pypy"
fi

get_py_version(){
cat tmp/py_miniconda | awk 'match($0,"Miniconda" "-" "[0-9.]+" "-" "[A-Za-z]+" "-" "[A-Za-z0-9_]+") { a = substr($0,RSTART,RLENGTH)
  split(a,b,"-")
  print b[2] "-" b[1] ":\n  " b[3] "-" b[4] ":\n  sha:"
}'

cat tmp/py_pypy | awk ' match($0, "pypy[0-9.]+" "-" "v[0-9.]+" "-" "[a-z0-9]+" ){
  a = substr($0,RSTART,RLENGTH)
  split(a,b,"-")
  if(b[3] != "src"){print b[2] "-" b[1] ":\n  " b[3] ":\n  sha:" }
} '
}

get_py_version | x yq -o json e -P