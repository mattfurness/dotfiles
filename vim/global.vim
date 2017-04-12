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
let g:mucomplete#enable_auto_at_startup = 1
set completeopt+=noinsert,noselect
autocmd BufReadPost,BufWritePost * Neomake
let g:gutentags_cache_dir = '~/.gutentags/'

autocmd BufWritePre * StripWhitespace

nnoremap <leader><leader> <C-^>
nnoremap <C-n> :%s///g<left><left>

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
