get_neo4j_migrations_version(){
    curl https://api.github.com/repos/michael-simons/neo4j-migrations/releases 2>/dev/null | x jo env .\* .tag_name -- 'printf "%s\n" "
$tag_name:
  linux/x64:
    sha:
  linux/arm64:
    sha:
  darwin/amd64:
    sha:
  darwin/arm64:
    sha:
  win/x64:
    sha:
    "'
}

get_neo4j_migrations_version | x yq -o json e -P