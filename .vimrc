execute pathogen#infect()
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set mouse=a
set ruler
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set spl=en_us spell

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"set the leader to be ","
let mapleader = ","

"set dark color scheme with syntax highlight - vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

"map Ctrl+n to open nerd tree
map <C-n> :NERDTreeToggle<CR>
"close vim if only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"turn on js autoformat
map <C-f> :call JsBeautify()<cr>

"vim-airline buffer tag line
"auto open all buffers
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"autoformater
"auto format on :w, should auto detect
au BufWrite * :Autoformat

"set the filetype to processing for all .pde files, enables vim-processing for
"file buffer
au BufRead,BufNewFile *.pde set filetype=processing

