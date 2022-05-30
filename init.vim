if &compatible
  set nocompatible
endif

set vb t_vb=

let g:python3_host_prog = '/usr/bin/python3'

set noswapfile

set clipboard+=unnamedplus

" tab completion
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

set number
set wrap
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set clipboard+=unnamedplus
set autoindent
set smartindent
filetype plugin indent on
inoremap jk <Esc>

" search
set ignorecase
set smartcase
set wrapscan
set hlsearch
set incsearch

" save cursor position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
		\ exe "normal! g'\"" |
	\ endif

" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.config/nvim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}

nmap <C-p> <Plug>MarkdownPreview

syntax enable
set t_Co=256
set t_ut=
" colorscheme iceberg
colorscheme codedark

set encoding=utf-8
set guifont=MesloLGS\ Nerd\ Font:h13

"let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
"let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
" after a re-source, fix syntax matching issues (concealing brackets):
"if exists('g:loaded_webdevicons')
"	call webdevicons#refresh()
"endif

" WSL yank support
let s:clip = '/mnt/c/WINDOWS/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

" Leader
let mapleader = "\<SPACE>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>d dd
nnoremap <Leader><CR> yyp
nnoremap <Leader><Leader> V
