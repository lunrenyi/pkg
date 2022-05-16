# shellcheck shell=sh  #source

if ! [ -f tmp/a ] ; then
    mkdir tmp
    curl https://api.github.com/repos/skaji/relocatable-perl/releases 2>/dev/null > tmp/a
    curl https://strawberryperl.com/releases.html 2>/dev/null > tmp/b
fi

get_perl_version(){
  cat tmp/a 2>/dev/null | awk '
{
  if(match($0, /"name": "[0-9.]+"/)){
    lastosarch = ""
    version = substr($0,RSTART+9,RLENGTH-10)
  }
  else if(match($0, /"name": "perl-[a-z0-9]*-[a-z0-9]*/)){   #"
    print_osarch(substr($0,RSTART+14,RLENGTH-14))
  }
}
function print_osarch(osarch){
    if(lastosarch == osarch ) return
    lastosarch  = osarch
    print version " " osarch
}
'
  cat tmp/b |awk '
match($0, /<td><b>[0-9.]+<\/b><\/td>/) {
  version = substr($0,RSTART+7,RLENGTH-16)
  print version " 32bit"
  print version " 64bit"
}
'
}

get_perl_version  | sort -V -u -r | awk '{
    if(last != $1){
        print $1 ":"
    }
    print "  " $2 ":\n    sha:"
    last = $1
}' | x yq -o json e -P

