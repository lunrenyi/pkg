pkg:info "gum"
gum_test(){
x assert stdout eval 'x gum -h  | awk '\'' NR==2{print $1} '\''' <<A
SUBCOMMANDS:
A
}

gum_test