# shellcheck shell=sh  #source

get_perl_version(){
  curl https://api.github.com/repos/skaji/relocatable-perl/releases 2>/dev/null | awk '
{
  if(match($0, /"name": "[0-9.]+"/)){
    lastosarch = ""
    version = substr($0,RSTART+9,RLENGTH-10)
  }
  else if(match($0, /"name": "perl-[a-z0-9_]*-[a-z0-9]*/)){   #"
    tmp = substr($0,RSTART+14,RLENGTH-14)
    split (tmp,a,"-")
    osarch = a[2]"/"a[1]
    print_osarch(osarch)
  }
}
function print_osarch(osarch){
  if(lastosarch == osarch ) return
  lastosarch  = osarch
  print version " " osarch
}
'
  curl https://strawberryperl.com/releases.html 2>/dev/null |awk '
    match($0, /<td><b>[0-9.]+<\/b><\/td>/) {
    version = substr($0,RSTART+7,RLENGTH-16)
    print version":\n  x64:\n    sha:"
    }
'
}

get_perl_info_to_yml(){
  get_perl_version  | sort -V -u -r
}

get_perl_version | x yq -o json e -P > "/home/linux/work/x-cmd/pkg/src/lang/perl/tmp"