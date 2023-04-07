get_groovy_version(){
    curl  https://api.github.com/repos/apache/groovy/tags 2>/dev/null | x jo env .\* .name -- aa
}

aa(){
  printf "%s" "$name" | awk '{
    gsub("GROOVY_", "", $0)
    l = split($0,arr, "_")
    if (l ==3){
      print arr[1] "."arr[2] "."arr[3] ":"
      print "  linux/x64:\n    " "sha256:"
      print "  darwin/x64:\n    " "sha256:"
      print "  linux/arm64:\n    " "sha256:"
      print "  win/x64:\n    " "sha256:"
      print "  darwin/arm64:\n    " "sha256:"
    }else{
      print arr[1] "."arr[2] "."arr[3] "-" arr[4] "-" arr[5] ":"
      print "  linux/x64:\n    " "sha256:"
      print "  darwin/x64:\n    " "sha256:"
      print "  linux/arm64:\n    " "sha256:"
      print "  win/x64:\n    " "sha256:"
      print "  darwin/arm64:\n    " "sha256:"
    }
  }
  '

}

get_groovy_version 