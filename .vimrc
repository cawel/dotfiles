" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","


""" Folding
let ruby_fold = 1
set nofoldenable     "no folds by default


""" NERDCommenter
let NERDSpaceDelims=1 


""" ack
map <leader>ack :Ack
map <leader>an :cn<cr>
map <leader>ap :cp<cr>


""" Taglist
map <leader>t :TlistToggle<cr>
let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'


set nocompatible
set ignorecase smartcase
syntax enable
set autoindent
set smartindent
set nu
set hlsearch
set incsearch
set tabstop=2
set shiftwidth=2
set laststatus=2
set statusline=%<%f\%h%m%r%=%-40.(line=%l\ \ col=%c%V\ \ tot=%L%)\ \ \%P
filetype on
filetype indent on
filetype plugin on

"keyboard shortcuts
map <F9> \be
map <F3> j.
"map <F3> I#<Esc>
map <F4> :NERDTreeToggle<cr>
map <F5> :tabp<cr>
map <F6> :tabn<cr>
map <F10> ggv<S-g>$=''
map <F12> <esc>:w<cr>
imap <F12> <c-o>:w<cr>
imap <C-@> <c-x><c-n>
map <space> <C-D>
"inserts new line below cursor
map <c-n> :pu_<cr>k
map <c-j> <c-w>1-
map <c-k> <c-w>1+
map <c-h> <c-w>1<
map <c-l> <c-w>1>
