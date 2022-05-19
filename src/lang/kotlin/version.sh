
# shellcheck shell=sh disable=SC2039,SC2142,SC3043 #source


get_kotlin_version(){
    curl https://api.github.com/repos/JetBrains/kotlin/releases 2>/dev/null | x jo env .\* .tag_name -- 'printf "%s\n" "$tag_name:
  sha:"'
}

if ! [ -f tmp/a ] ; then
    mkdir tmp
    get_kotlin_version > tmp/a
fi

cat tmp/a | x yq -o json e -P
