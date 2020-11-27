
" -- Required plugin manager stuff
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ======
" Plugins here
" ======
Plugin 'hashivim/vim-terraform'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
" ======
" End of Plugins
" ======
call vundle#end()
filetype plugin indent on
" --- End required plugin manager stuff

" vim-terraform config
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" My sad customizations
set number
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox

syntax on

" Python Pep8
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

" Javascript
au BufNewFile,BufRead *.js,*.ts
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

" Terraform
au BufNewFile,BufRead *.tf
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.ts match BadWhitespace /\s\+$/
let python_highlight_all=1
