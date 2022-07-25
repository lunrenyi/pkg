pkg:info "gh"
x assert stdout  'x gh -h' <<A

SUBCOMMANDS:
    repo      repo command
    current   set current owner, repo
    org       manage org
    user      user
    config    save, load, which
    token     set token
    auth      Authorize gh
    release   manage release
    member    Authorize gh
A

x pkg uninstall gh