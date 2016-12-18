execute pathogen#infect()
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set mouse=a
set ruler
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set foldmethod=syntax

syntax enable
set background=dark
colorscheme solarized

"open NERDTree if no filename parame passed on startup
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
