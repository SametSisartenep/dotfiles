set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim/
set formatoptions+=t

execute pathogen#infect()
filetype plugin indent on
syntax on

let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = []
let g:syntastic_html_jshint_conf = "$HOME/.jshintrc"
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:vim_json_syntax_conceal = 0
let g:mustache_abbreviations = 1
"let g:syntastic_cpp_compiler='clang++'
"let g:syntastic_c_compiler='clang'
"let g:syntastic_cpp_compiler_options=' -std=c++11'
"let g:syntastic_c_compiler_options=' -std=c11'

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

" Solves a problem with tmux key signals
if &term =~ '^screen'
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

set mouse=a

set smarttab
set tabstop=2
set shiftwidth=2
set expandtab

set laststatus=2
set showmode
set t_Co=256
set so=7
set mat=2
set incsearch
set lazyredraw
set foldcolumn=1
set showmatch
set smartcase

set lbr
set tw=72

set ai
set si
set wrap

map j gj
map k gk

set background=dark
" SOLARIZED
"let g:solarized_termcolors=256
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
"colorscheme solarized

" RAILSCASTS
"colorscheme railscasts

" GITHUB
"colorscheme github

" C64
"colorscheme C64

" INORI
"colorscheme inori

" MATRIX
colorscheme greenvision

" BASE16
"let base16colorspace=256
"colorscheme base16-default

highlight LineNr ctermbg=black ctermfg=184
