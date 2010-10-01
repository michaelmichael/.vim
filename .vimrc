" Basic options
set nocompatible " No vi compatibility
set visualbell " Silence the bell
set incsearch
set ruler

" Formatting
autocmd filetype css setlocal equalprg=csstidy\ -\ --silent=true
set expandtab " Expands tabs to spaces
set lines=70 columns=120
set wrap linebreak textwidth=0
set tabstop=2 shiftwidth=2 softtabstop=2
set linespace=3
set autoindent
set backspace=indent,eol,start
set ignorecase
set wildmenu
set smarttab
set number
colorscheme underwater-mod
set gfn=Menlo:h14.00
set guioptions-=T "remove toolbar
set transp=3

" Filetype options
filetype indent on
filetype plugin on
syntax on
filetype on

" Use ack instead of grep
set grepprg=ack

let NERDSpaceDelims=1

" Map fuzzy file finder
nmap <c-h> :FufHelp<CR>
nmap <c-k> :FufFile<CR>

" Map editing and sourcing .vimrc
nmap <Leader>s :source $MYVIMRC
nmap <Leader>v :e! $MYVIMRC

" To save, ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" NERDTree
map <F2> :NERDTreeToggle<CR> " Turns on/off NERDTree

" Personal keymaps
map <F5> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

vmap <F6> :v/\S/d<CR> " Removes empty lines
vmap <F7> :rubydo $_ = $_.scan(/[A-Z]{2}_[A-Z]{4}_\d{6}[a-z]?[A-Z]{0,2}[_]?[0-9]?/).to_s<CR> " Scans for Audible product IDs
vmap <F8> :s/\n/, /g<CR> " Changes newlines to commas
nmap <Leader>g :rubydo $_ = $_.gsub(/
map <Leader>r :w! <bar> !/Users/michael/.rvm/bin/ruby-1.9.2-rc2 %<CR>


set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go
