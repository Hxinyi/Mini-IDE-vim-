" _ Author: Xinyi_Huang
" _Time: 13.03.2019
" _Description: A very light IDE based on vim. Usually there are many interesting 
" _plugins and git programms which can help us build an IDE. Thanks all 
" _contributors! When I write my vimrc, I make a lot references from them.

" ----------------Plugin settings-------------
source ~/.vim/plugin_setting.vim

" -----------------Vim UI-------------------
" color scheme
set background=dark
colorscheme skeletor
" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set hlsearch                    " highlight the search result
set ignorecase                  " no care about case
set smartcase                   " when the searched words contain capital letters, the editor will distiguish or lower case.
set incsearch                   " incresly search
" set nowrapscan                " forbid wrap scanning

" editor setting
set nu
syntax on                       " enable syntax highlight and completion
set guifont=Monospace\ Bold\ 12
set nofoldenable                " disable folding
set confirm                     " when the file is not saved, prompt comfirmation request
set backspace=indent,eol,start  " if set auto indent before, the command is required in order to delete with backspace
set t_Co=256                    " set color number 256 (support 8 colors if not set)
set mouse=a                     " always use mouse under all modes
set report=0                    " always report number of lines changed
set title                       " show titlebar
set scrolloff=5                 " 5 lines above/below cursor when scrolling
set showmatch                   " match bracket
set matchtime=2                 " show matching bracket for 0.2 seconds
" set laststatus=2              " use 2 lines for the status bar(conflict with syntastic)
" set showcmd                   " show typed command in status bar(conflict with syntastic)
" set textwidth=120             " change to the next line when the textwidth is 120
" set colorcolumn=+1            " obvious at textwidth 120

" indentation default
set autoindent                  " indent when pressing 'enter'
set smartindent
set tabstop=2                   " tab width
set softtabstop=2               " backspace
set shiftwidth=2                " indent width
" set expandtab                 " expand tab to space

" if set different indentation forms for different languages, use the follwing commnds:
autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

" advanced setting between Tab and Space
set list                        " show Tab and Space
set lcs=tab:\|\ ,nbsp:%,trail:-
highlight LeaderTab guifg=#666666
match LeaderTab /^\t/
" delete Space at end: %s/\s*$//ge

" show the current buffer path by %%
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" --------------------------------include_file-----------------------------
" Simple function
source ~/.vim/simple_function.vim

" UVM syntax
source ~/.vim/uvm_syntax.vim

" Verilog syntax

autocmd bufwritepost .vimrc source $MYVIMRC

" tmp forbidden Arrow
noremap <Up> <Nop> 
noremap <Down> <Nop> 
noremap <Left> <Nop> 
noremap <Right> <Nop>
