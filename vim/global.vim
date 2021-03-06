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
set undofile
set undodir=~/.vim/undodir

syntax enable
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set clipboard=unnamed

let g:auto_save = 0
let g:auto_save_in_insert_mode = 0

let g:rg_highlight = 1

set completeopt+=menuone
set shortmess+=c
set completeopt+=noinsert,noselect
set splitbelow

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
\ 'elixir': ['dialyxir'],
\ 'elm': ['make', 'elm_ls'],
\ 'haskell': ['hlint'],
\ 'python': ['pyls'],
\}
let g:ale_fixers = {
\ 'typescript': ['prettier'],
\ 'elixir': ['mix_format'],
\ 'elm': ['format'],
\ 'haskell': ['brittany'],
\ 'python': ['black'],
\ 'nix': ['nixpkgs-fmt'],
\ 'terraform': ['terraform'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_set_highlights = 0
let g:ale_elm_ls_executable = "./node_modules/.bin/elm-language-server"

autocmd BufWritePre * StripWhitespace

nnoremap <leader><leader> <C-^>
nnoremap <C-m> :%s///gc<left><left><left>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeFind<cr>
nnoremap <leader>h <C-w><left>
nnoremap <leader>l <C-w><right>
nnoremap <leader>k <C-w><up>
nnoremap <leader>j <C-w><down>
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
noremap Y y$

" ALE
nnoremap <leader>aj :ALENext<CR>
nnoremap <leader>ak :ALEPrevious<CR>
nnoremap <leader>ad :ALEDetail<CR>
nnoremap <leader>ah :ALEHover<CR>
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>fr :ALEFindReferences<CR>

" Fuzzy find
nnoremap <C-p> :GFiles<CR>

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
