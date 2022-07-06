# shellcheck shell=sh  #source

# v1.45.2: {}
# v1.56.1: {}
# v1.60.0: {}

get_rust_version(){
    curl https://api.github.com/repos/rust-lang/rust/releases 2>/dev/null | awk ' {
    if(match($0, /"name": "[v0-9.]+"/)){
        lastosarch = ""
        print substr($0,RSTART+9,RLENGTH-10) ":"
    } else if(match($0, /"name": "Rust [0-9.]+/)){   #"
        if ($0 ~ "src") next
       print_osarch( substr($0,RSTART+9,RLENGTH-9) )
    }
  }


  function print_osarch(osarch){
    if(lastosarch == osarch ) return
    lastosarch  = osarch
    gsub("Rust","",osarch)
    print osarch ":\n"  "  darwin/x64:\n" "    sha:\n" "  darwin/amd64:\n"    "    sha:\n" "  darwin/arch64:\n"    "    sha:\n"  "  win/x64:\n"    "    sha:\n" "  linux/x64:\n"    "    sha:\n" "  linux/arch64:\n"    "    sha:"
  }
'
}

get_rust_version | x yq -o json e -P