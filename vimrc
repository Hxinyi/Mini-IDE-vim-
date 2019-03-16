" _ Author: Xinyi_Huang
" _Time: 13.03.2019
" _Description: A very light IDE based on vim. Usually there are many interesting 
" _plugins and git programms which can help us build an IDE. Thanks all 
" _contributors! When I write my vimrc, I make a lot references from them.

" ---------------Plugin Setting---------------
set nocompatible
filetype off
" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on
syntax on

"NerdTree setting
autocmd vimenter * NERDTree

set nu
colorscheme solarized
set cscopequickfix=s-,c-,d-,i-,t-,e-
