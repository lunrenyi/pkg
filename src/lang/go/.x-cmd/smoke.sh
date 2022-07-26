pkg:info "go"

go_test(){
x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/gofmt -h' <<A
flag provided but not defined: -V
usage: gofmt [flags] [path ...]
  -cpuprofile string
        write cpu profile to this file
  -d    display diffs instead of rewriting files
  -e    report all errors (not just the first 10 on different lines)
  -l    list files whose formatting differs from gofmt's
  -r string
        rewrite rule (e.g., 'a[b:len(a)] -> a[b:]')
  -s    simplify code
  -w    write result to (source) file instead of stdout
A
}

go_test