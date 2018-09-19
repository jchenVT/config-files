" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/ncm-clang'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


"===========================================================
"youcompleteme stuff here 
"this tells YCM to use the c++ version of YCM when editing any file
"but only uses when ycm cant find extra conf in current directroy
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_complete_in_comments=1
let g:ycm_key_list_select_completion=['<TAB>']
let g:ycm_autoclose_preview_window_after_insertion=1

"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]

"===============================================================================
"vim only stuff here
set autoindent
"this broken idk why maybe this'll fix it
"somehow smartidnent is even mroe fucked
"set smartindent
set tabstop=4 "number of VISUAL spaces
set shiftwidth=4
set number "show line numbers
set showcmd "show command in bottomr bar
set cursorline "highlight current line
set wildmenu "visual autocompelete for command
set lazyredraw "redraw screen less often
set showmatch "highlight something lol
set incsearch "search as characters are etnered
set hlsearch "highlights matches
"so backspace is weird and this fixes taht? idk
set backspace=indent,eol,start

" jk is escape
" escape is jk
" jk is wavy
inoremap jk <esc>
inoremap JK <esc>
inoremap kj <esc>
colorscheme jellybeans "shits amazing
set nowrap
syntax enable  " enable syntax processing

"backup stuff heres
set backup 
set writebackup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

"This makes vim split stuff easier
"This allows movement between vi split with CTRL+HJKL
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
