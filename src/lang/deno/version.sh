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
get_deno_version | x yq -o json e -P