# shellcheck shell=sh disable=SC2154,SC1090,SC3043

___x_cmd_zsh_plugin_deactivate(){
    [ -n "$ZSH_VERSION" ] || return 1
    local zsh_plugins
    local plugin
    zsh_plugins=("${(@s/,/)ZSH_PLUGIN:?Provide ZSH plugin name}")
    for plugin in "${zsh_plugins[@]}"; do
        x boot rc del "x-plugin-${plugin}"
    done
    # TODO: wait pkg activate bug fix
    # x boot rc del "x-plugin-${ZSH_PLUGIN:?Provide ZSH plugin name}"
}

___x_cmd_zsh_plugin_deactivate