# shellcheck shell=sh  #source

# v1.45.2: {}
# v1.56.1: {}
# v1.60.0: {}

get_rust_version(){
    curl https://forge.rust-lang.org/infra/other-installation-methods.html 2>/dev/null | awk 'BEGIN{
        print "rust-1.60.0:"
    }
    {
        if ($0 ~ "---------|--------|------|--------") INFO_STATUS = 1
        else if ($0 ~ "`, and") exit(0)
        else if (INFO_STATUS == 1) {
            if (match($0, "` | ")) print "  " substr($0, 2, RSTART-2) ":\n    sha:"
        }
        else next
    }'
}

if ! [ -f tmp/a ] ; then
    mkdir tmp
    get_rust_version > tmp/a
fi
cat tmp/a | x yq -o json e -P