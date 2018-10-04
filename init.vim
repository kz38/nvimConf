if has('win32')  
	set encoding=cp932
else  
	set encoding=utf-8
endif
scriptencoding utf-8

"unlet! skip_defaults_vim
"source $VIMRUNTIME/defaults.vim

set number
set noswapfile
set incsearch

imap <C-b> <Left>
imap <C-f> <Right>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/data/data/com.termux/files/home/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/data/data/com.termux/files/home/.cache/dein')
  call dein#begin('/data/data/com.termux/files/home/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/data/data/com.termux/files/home/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('prabirshrestha/async.vim')
  call dein#add('prabirshrestha/vim-lsp')
  call dein#add('prabirshrestha/asyncomplete.vim')
  call dein#add('prabirshrestha/asyncomplete-lsp.vim')
  call dein#add('dhruvasagar/vim-table-mode')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"Python LSP
if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

"table-mode
let g:table_mode_header_fillchar='='
