if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g theme_color_scheme nord
    source ~/.iterm2_shell_integration.fish
end
fish_add_path /usr/local/opt/mysql-client/bin
alias vlime='sbcl --load ~/.local/share/nvim/site/pack/packer/start/vlime/lisp/start-vlime.lisp'
fish_vi_key_bindings

# opam configuration
source /Users/fisheln/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
