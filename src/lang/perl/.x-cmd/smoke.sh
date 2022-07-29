pkg:info "perl"
perl_test(){
x assert stdout '/home/mnnna/.x-cmd/.tmp/pkg/installed/$name/$version/bin/perl -v 2>&1 | awk '\''NR==2{print $3 $4} '\''' <<A
perl5,
A
}
perl_test


