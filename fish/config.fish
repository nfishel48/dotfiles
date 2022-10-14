if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g theme_color_scheme nord
    source ~/.iterm2_shell_integration.fish
end
fish_add_path /usr/local/opt/mysql-client/bin
fish_vi_key_bindings
