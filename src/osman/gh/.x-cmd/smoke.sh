pkg:info "gh"
gh_test(){
x assert stdout  'x gh -h  | awk '\''NR==2{print $1} '\''' <<A
SUBCOMMANDS:
A
}

gh_test