get_perl_version(){
   curl https://api.github.com/repos/skaji/relocatable-perl/releases 2>/dev/null | awk ' {
     if(match($0, /"name": "[0-9.]+"/)){
       version = substr($0,RSTART+9,RLENGTH-10)
       lastosarch = ""
       print version ":"
     } else if(match($0, /"name": "perl-[a-z0-9]*-[a-z0-9]*/)){   #"
       osarch = substr($0,RSTART+14,RLENGTH-14)
       print_osarch(osarch)
     }
   }
   function print_osarch(osarch){
       if(lastosarch == osarch ) return
       lastosarch  = osarch
       print "  " osarch ":\n    sha:"
   }
 '
curl https://strawberryperl.com/releases.html 2>/dev/null |awk '
    match($0, /<td><b>[0-9.]+<\/b><\/td>/) {
    version = substr($0,RSTART+7,RLENGTH-16)
    print version ":\n  32bit:\n    sha:"
    print version ":\n  64bit:\n    sha:"
}
' |  x yq -o json e -P
}

get_perl_version