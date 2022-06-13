# shellcheck shell=sh disable=SC2154,SC1090,SC3043

___x_cmd_zsh_plugin_activate(){
    [ -n "$ZSH_VERSION" ] || return 1
    local zsh_plugins
    local plugin
    zsh_plugins=("${(@s/,/)ZSH_PLUGIN:?Provide ZSH plugin name}")

    # TODO: wait x pkg ls output empty
    if [ -z "$(x pkg ls zsh-plugin 2>/dev/null)" ]; then
        x pkg install zsh-plugin
    fi

    for plugin in "${zsh_plugins[@]}"; do
        if . "$___X_CMD_PKG_INSTALL_PATH/$name/$version/$plugin/$plugin.plugin.zsh"; then
            x boot rc add "x-plugin-$plugin" \
                "[ -n \"\$ZSH_VERSION\" ] && . $___X_CMD_PKG_INSTALL_PATH/$name/$version/$plugin/$plugin.plugin.zsh"
        fi
    done

    # TODO: wait pkg activate bug fix
    # if . "$___X_CMD_PKG_INSTALL_PATH/$name/$version/${ZSH_PLUGIN:?Provide ZSH plugin name}/$ZSH_PLUGIN.plugin.zsh"; then
    #     x boot rc add "x-plugin-$ZSH_PLUGIN" "[ -n \"\$ZSH_VERSION\" ] && . $___X_CMD_PKG_INSTALL_PATH/$name/$version/$ZSH_PLUGIN/$ZSH_PLUGIN.plugin.zsh"
    # fi
}

___x_cmd_zsh_plugin_activate