source $HOME/.config/nvim/vim-plug/plugins.vim
nmap <C-n> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key = '<C-a>,'
map <Leader> <Plug>(easymotion-prefix)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
set clipboard+=unnamedplus
set autoindent smartindent
map <D-z> u
map <D-c> "*y
set number
set noshowmode
let g:lightline = { 
            \ 'colorscheme' : 'jellybeans', 
            \ 'active': {
            \   'left': [[ 'mode', 'paste'],
            \       ['gitbranch', 'readonly', 'filename', 'modified']]
            \ },
            \ 'component_function': {
            \       'gitbranch': 'fugitive#head'
            \ },
            \ }
" enable mouse
set mouse=a
if has('mouse_sgr')
    " sgr mouse is better but not every term supports it
    set ttymouse=sgr
endif

nmap <C-F>f <Plug>CtrlSFPrompt                  
nmap <C-F>n <Plug>CtrlSFCwordPath
nmap <C-F>p <Plug>CtrlSFPwordPath

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
let g:ctrlp_show_hidden = 1

" set color needs to bee
" at the end of file to work
colorscheme gruvbox
