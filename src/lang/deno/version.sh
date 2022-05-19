# shellcheck shell=sh #source
get_deno_version(){
  curl https://api.github.com/repos/denoland/deno/releases 2>/dev/null | awk ' {
    if(match($0, /"name": "[v0-9.]+"/)){
        lastosarch = ""
        print substr($0,RSTART+9,RLENGTH-10) ":"
    } else if(match($0, /"name": "deno[^ .]+/)){   #"
        if ($0 ~ "src") next
        print_osarch( substr($0,RSTART+9,RLENGTH-9) )
    }
  }
  function print_osarch(osarch){
      if(lastosarch == osarch ) return
      lastosarch  = osarch
      print "  " osarch ":\n    sha:"
  }
'
}
if ! [ -f tmp/a ] ; then
    mkdir tmp
    get_deno_version > tmp/a
fi
cat tmp/a | x yq -o json e -P