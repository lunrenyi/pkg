# shellcheck shell=sh disable=SC2154,SC1090,SC3043

___x_cmd_zsh_plugin_activate(){
    [ -n "$ZSH_VERSION" ] || return 1
    local zsh_plugins
    local plugin
    zsh_plugins=("${(@s/,/)ZSH_PLUGIN:?Provide ZSH plugin name}")

    for plugin in "${zsh_plugins[@]}"; do
        if ! . "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$plugin/$plugin.plugin.zsh"; then
            printf "\033[31m%s\n\033[36m%s\033[0m\n" "Failed to load plugin: $plugin" "x pkg install zsh-plugin"
            return 1
        fi
    done
}

___x_cmd_zsh_plugin_activate