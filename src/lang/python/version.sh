# shellcheck shell=sh #source

get_py_version(){
curl -L https://repo.anaconda.com/miniconda/ 2>/dev/null | awk '
  {
    if(match($0, "Miniconda3")) begin = 1
  }
begin==1 &&(($0 ~"<td><a href=.*</a></td>" ) || ($0 ~"<td>[0-9a-z]{64}<\\/td>" )){
  if(match($0,"<td><a href=.*</a></td>")) {
    if( arr[version] != "") contiune
    arr[version] = version
    gsub("Linux", "linux", $0)
    gsub("Windows", "win", $0)
    gsub("MacOSX", "darwin", $0)
    gsub("x86_64", "x64", $0)
    version = substr($0,RATART+20,RLENGTH-22);
    split(version,b,">")
    len = split(b[2],c,"-")
    if (len ==5 ) split(c[5], d, ".")
    else split(c[4], d, ".")

    # print b[2]
    # print c[2] " " c[3] " " d[1]
    if (len ==5 ){
      _version = c[2] "-" c[3]
      _osarch=c[4]"/"d[1]
    } else{
      _version = c[2]
      _osarch=c[3]"/"d[1]
    }
    if(d[2] != "pkg"){
      if (arr[_version] == ""){
        if((_version ~ "py.*") ||(_version == "latest")){
          print _version ":"
          osarch_available = 0
        }else osarch_available = 1
        arr[_version] = _version
      }
      if (arr[_version _osarch] == ""){
        if ((osarch_available == 0)&&(d[2] !~ "pkg")){
          print "  " _osarch ":"
          sha_available = 0
        }
        arr[_version _osarch] = _version  _osarch
      }
    }
  }
  if((match($0,"<td>[0-9a-z]{64}<\\/td>")) &&(d[2] != "pkg")) {
    if( arr[sha256] != "") contiune
    sha256 = substr($0,RATART+11,RLENGTH-9);
    if(sha_available == 0){
      print "    sha256: "sha256
      sha_available = 1
    }
    arr[sha256] = sha256
  }

}'

curl -H "Accept-Encoding: gzip" https://downloads.python.org/pypy/ 2>/dev/null | gunzip | more | awk ' match($0, "pypy[0-9.]+" "-" "v[0-9.]+" "-" "[a-z0-9]+" ){
  a = substr($0,RSTART,RLENGTH)
  split(a,b,"-")
  gsub("linux64","linux/x64",b[3])
  gsub("linux32","linux/x32",b[3])
  gsub("win32","win/x32",b[3])
  gsub("win64","win/x64",b[3])
  gsub("aarch64","darwin/arm64",b[3])
  gsub("osx64","darwin/x64",b[3])

  if(b[3] != "src"){print b[1] "-" b[2] ":\n  " b[3] ":\n    sha:" }
} '
}

get_py_version
