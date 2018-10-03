" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" adds some basic vim functionality in case stuff breaks
Plug 'tpope/vim-sensible'
" adds git functionality to vim, run all git commands
Plug 'tpope/vim-fugitive'
" semantic autocompletion engine
Plug 'Valloric/YouCompleteMe'
" creates configuration files for YCM
Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
" Adds git functionality: shows new, deleted, and changed lines
Plug 'airblade/vim-gitgutter'
" fuzzy file completion, for vim and terminal
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"sandwich allows for adding/deleting/replacing (), [], {}, and more to surround text
Plug 'machakann/vim-sandwich'
"sleuth detects tabs or spaces and lenght and adjusts accordingly
Plug 'tpope/vim-sleuth'
"adds cool statusline 
Plug 'itchyny/lightline.vim'
"directory tree in vim"
Plug 'scrooloose/nerdtree'
"gruvbox colorscheme"
Plug 'morhetz/gruvbox'

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

"=========================================================
"vim sandwich config
let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

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

" jk is escape
" escape is jk
" jk is wavy
inoremap jk <esc>
inoremap JK <esc>
inoremap kj <esc>
set nowrap
syntax enable  " enable syntax processing

"backup stuff heres
set backup 
set writebackup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

"Colorscheme ==================================================="
set background=dark
colorscheme gruvbox "switching to this vs jellybeans
"=================================================================
"This makes vim split stuff easier
"This allows movement between vi split with CTRL+HJKL

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"==============================================================
"This auto expands opening brackets/parentheses
"this annoying inoremap ( ()<Esc>i
inoremap { {}<Esc>i<return><esc>O
inoremap [ []<Esc>i

"nerdtreeeasier==================================================
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Nt NERDTreeToggle
