" Indentation
set shiftwidth=2                           " Number of spaces to use in each autoindent step
set tabstop=2                              " Two tab spaces
set softtabstop=2                          " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                              " Spaces instead of tabs for better cross-editor compatibility
set autoindent                             " Keep the indent when creating a new line
set smarttab                               " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent                                " Recommended seting for automatic C-style indentation
set autoindent                             " Automatic indentation in non-C files
set foldmethod=indent                      " Fold based on source indentation
set foldlevelstart=99                      " Expand all folds by default

set number
set relativenumber
set autoread
set showcmd

let g:airline_theme='oceanicnext'
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme OceanicNext

set clipboard=unnamed

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:rg_highlight = 1

set completeopt+=menuone
set shortmess+=c
set completeopt+=noinsert,noselect

let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#chains = {}
let g:mucomplete#chains.default = ['path', 'tags', 'c-n', 'incl', 'keyn', 'dict', 'uspl']

let g:gutentags_define_advanced_commands = 1
let g:gutentags_ctags_exclude = ['./**/dist', './**/node_modules']
let g:gutentags_file_list_command = {
\ 'markers': {
    \ '.git': 'git ls-files',
    \ '.hg': 'hg files',
    \ },
\ }

let g:ale_linters = {
\   'elixir': ['dialyxir'],
\ 'haskell': ['ghc', 'hlint'],
\}
let g:ale_fixers = {
\   'typescript': ['prettier'],
\   'elixir': ['mix_format'],
\}
let g:ale_fix_on_save = 1

autocmd BufWritePre * StripWhitespace

nnoremap <leader><leader> <C-^>
nnoremap <C-n> :%s///g<left><left>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeFind<cr>
nnoremap <leader><left> <C-w><left>
nnoremap <leader><right> <C-w><right>
nnoremap <leader><up> <C-w><up>
nnoremap <leader><down> <C-w><down>
nnoremap <leader>f :files<CR>
nnoremap <leader>b :buffers<CR>
nnoremap <leader>aj :ALENext<CR>
nnoremap <leader>ak :ALEPrevious<CR>
nnoremap <leader>ad :ALEDetail<CR>

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
