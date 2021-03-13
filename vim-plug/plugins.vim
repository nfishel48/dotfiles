" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " HTML Expansion
    Plug 'mattn/emmet-vim'
    " Easy Motion Text Nav
    Plug 'easymotion/vim-easymotion'
    " Info Tabline
    Plug 'https://github.com/itchyny/lightline.vim.git'
    " Code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Theme
    Plug 'https://github.com/cocopon/iceberg.vim.git'
call plug#end()
