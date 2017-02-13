set formatoptions+=t

execute pathogen#infect()
filetype plugin indent on
syntax off

set background=light
" PLAN9 ACME
colorscheme acme

let NERDTreeShowHidden=1
let g:NERDTreeWinSize=25

set listchars=trail:·,extends:>,precedes:<,tab:▸\ ,eol:¬
"set list!
"set number

nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-L> :NERDTreeToggle<CR>
nmap <C-N><C-N> :set invnumber<CR>
nmap <F8> :TagbarToggle<CR>

" Add newline on indent
let delimitMate_expand_cr=1

" Change buffers
nnoremap <silent> <Right> :bnext<CR>
nnoremap <silent> <Left> :bprev<CR>

" Clear search highlightning
nmap <silent> <C-c> :nohlsearch<CR>

" Solves a problem with tmux key signals
if &term =~ '^screen'
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

" Jump to the last position when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set mouse=a

set smarttab
set tabstop=8
set shiftwidth=8
set noexpandtab

hi slnc cterm=bold ctermbg=black ctermfg=white

set statusline=%#slnc#%3.3P\ \ %4.l,\ %3.c%=%-.40f\ %h%m%r%=\ %Y\ [%{strlen(&fenc)?&fenc:'none'}\|%{&ff}]\ 
set laststatus=2

set showmode
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set t_Co=256
set so=7
set mat=2
set incsearch
set lazyredraw
set foldcolumn=1
set showmatch
set smartcase

set lbr
set tw=75

set ai
set si
set wrap

map j gj
map k gk
