" init autocmd
autocmd!

" set script encoding
scriptencoding utf-8

" Setter
set number
set relativenumber
set encoding=utf-8
set shell=fish
set nobackup
syntax enable
set expandtab
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*


" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim
"}}}


" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}
