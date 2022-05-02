call plug#begin("~/.vim/plugged")
  " Plugin Section
Plug 'arcticicestudio/nord-vim'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

"Config Sectin
if (has("termguicolors"))
set termguicolors
endif

"syntax enable
colorscheme nord
" Toggle
nnoremap <silent> <C-b> :CHADopen<CR>
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
set number
let g:airline_theme='bubblegum'
let g:coq_settings = { 'auto_start': v:true }
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'
set mouse=a

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.gopls.setup{
        cmd = {'/Users/nfishel/go/bin/gopls'},
        -- for postfix snippets and analyzers
        capabilities = capabilities,
                settings = {
                gopls = {
                        experimentalPostfixCompletions = true,
                                analyses = {
                                unusedparams = true,
                                shadow = true,
                                },
                                staticcheck = true,
                                },
                    },
                on_attach = on_attach,
}

require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
      border = "rounded"
   }
})

require("coq")
--require("indent_blankline").setup {

    -- for example, context is off by default, use this to turn it on

    --show_current_context = true,

    --show_current_context_start = true,

--}
EOF

