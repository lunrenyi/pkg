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
    gsub("deno-","",osarch)
    gsub("x86_64","x64",osarch)
    gsub("apple-darwin","darwin",osarch)
    gsub("pc-windows-msvc","win",osarch)
    gsub("aarch64","amd64",osarch)
    gsub("unknown-linux-gnu","linux",osarch)
    gsub("-","/",osarch)
    split(osarch,b,"/")
    osarch = b[2]"/"b[1]
      print "  " osarch ":\n    sha:"
  }
'
}

get_deno_version | x yq -o json e -P