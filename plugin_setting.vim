set nocompatible
filetype off
" Vim plugin manager: main job is to provide conviniece for installing 
" other plugins.
silent! call plug#begin('~/.vim/plugged')
" NerdTree
Plug '~/.vim/plugged/nerdtree'
Plug '~/.vim/plugged/ctrlp.vim'
Plug '~/.vim/plugged/taglist'
Plug '~/.vim/plugged/rainbow'
Plug '~/.vim/plugged/syntastic' 
Plug '~/.vim/plugged/tabular'
call plug#end()

" enable filetype detection and fit specific plugin/indent
filetype plugin indent on

" NerdTree setting
" set Ctrl+n as the specific key to open and hide NerdTree:
map<C-n> :NERDTreeToggle<CR>  
" au vimenter * NERDTree              " open a NERDTree automatically when vim starts up
let NERDTreeWinSize=30                " adjust the size of nerdtree window

" ctrlp setting
let g:ctrlp_show_hidden=1             " show hidden files (not work now)

" taglist setting
" set t+l as the specific key to open and hide TagList:
map<C-l> :TlistToggle<CR>
let Tlist_Auto_Open=0                 " not open Tlist when opening
let Tlist_Show_One_File=1             " only show the tags of current file
let Tlist_Ctags_Cmd="/usr/bin/ctags"  " based on ctags
let Tlist_Use_SingleClick=1           " jump to the function definition when click once
let Tlist_WinWidth=30                 " adjust the size of TagList
set tags=./tags

" Rainbow setting
" always open rainbow
let g:rainbow_active=1
let g:rainbowconf={
            \'guifigs': ['lightblue','lightyellow','lightcyan','lightmagenta'],}

" syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
" c/cpp
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++11'
" perl
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl']
" python
let g:syntastic_python_checkers = ['python']

" Other setting
" Close the window if main editor window is closed
au BufEnter * if 0 == len(filter(range(1, winnr('$')),'empty(getbufvar(winbufnr(v:val),"&bt"))')) | qa! |endif
