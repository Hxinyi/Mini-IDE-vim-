" _ Author: Xinyi_Huang
" _Time: 13.03.2019
" _Description: A very light IDE based on vim. Usually there are many interesting 
" _plugins and git programms which can help us build an IDE. Thanks all 
" _contributors! When I write my vimrc, I make a lot references from them.

" ---------------Plugin Setting---------------
set nocompatible         "remove all related compatible mode, avoid bugs existing in the versions before
filetype off 
" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
call vundle#end()
filetype plugin indent on
syntax on

"NerdTree setting
"set Ctrl+n as the specific key to open and hide NerdTree:
map<C-n> :NERDTreeToggle<CR>  
au vimenter * NERDTree     "open a NERDTree automatically when vim starts up
let NERDTreeWinSize=30     " adjust the size of nerdtree window

"Rainbow_parentheses setting
"always open rainbow
au VimEnter * RainbowParenthesesToggle   " Toggle it on 
au Syntax * RainbowParenthesesLoadRound  " ()
au Syntax * RainbowParenthesesLoadSquare " []
au Syntax * RainbowParenthesesLoadBraces " {}
" g: Global; b: Local to the current buffer; l: Local to a function
let g:rbpt_colorpairs = [                
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
"--------------Vim UI----------------------

"colorsceme
colorscheme solarized

"highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn 

"search
set hlsearch  "highlight the search result
set ignorecase   "no care about case
set smartcase    "when the searched words contain capital letters, the editor will distiguish or lower case.
set incsearch    "incresly search
set nowrapscan   "forbid wrap scanning

"editor setting
set nu
set nofoldenable         "disable folding
set confirm              "when the file is not saved, prompt comfirmation request
set backspace=indent,eol,start     "if set auto indent before, the command is required in order to delete with backspace
set t_Co=256                       "set color number 256 (support 8 colors if not set)
set mouse=a                        "always use mouse under all modes
set report=0                       "always report number of lines changed
set title                          "show titlebar
set scrolloff=5                    "5 lines above/below cursor when scrolling
set showmatch                      "match bracket
set matchtime=2                    "show matching bracket for 0.2 seconds
set laststatus=2                   "use 2 lines for the status bar
set showcmd                        "show typed command in status bar
set textwidth=120                   "change to the next line when the textwidth is 120
"set colorcolumn=+1                 "obvious at textwidth 120 

"Indentation default
set autoindent      "indent when pressing 'enter'
set smartindent  
set tabstop=4       "tab width
set softtabstop=4   "backspace
set shiftwidth=4    "indent width
set expandtab       "expand tab to space

"if set different indentation forms for different languages, use the follwing commnds:
"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
                                 

