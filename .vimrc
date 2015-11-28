set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim/
set formatoptions+=t

execute pathogen#infect()
filetype plugin indent on
syntax on

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_jshint_conf = "$HOME/.jshintrc"
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:vim_json_syntax_conceal = 0
let g:mustache_abbreviations = 1
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_c_compiler='clang'
let g:syntastic_cpp_compiler_options=' -std=c++11'
let g:syntastic_c_compiler_options=' -std=c11'

let NERDTreeShowHidden=1
let g:NERDTreeWinSize=25

set listchars=trail:·,extends:>,precedes:<,tab:▸\ ,eol:¬
set list!
set number

nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-L> :NERDTreeToggle<CR>
nmap <C-N><C-N> :set invnumber<CR>

set laststatus=2
set showmode
set t_Co=256
set tw=76

set background=light
" SOLARIZED
"let g:solarized_termcolors=256
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
"colorscheme solarized

" RAILSCASTS
"colorscheme railscasts

" GITHUB
colorscheme github

" C64
"colorscheme C64

" INORI
"colorscheme inori

" MATRIX
"colorscheme greenvision

" BASE16
"let base16colorspace=256
"colorscheme base16-default
