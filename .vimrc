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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"set foldmethod=syntax

"set the leader to be ","
let mapleader = ","

"set dark color scheme with syntax highlight - vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

"open NERDTree if no filename parame passed on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map Ctrl+n to open nerd tree
map <C-n> :NERDTreeToggle<CR>
"close vim if only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"turn on js autoformat
map <C-f> :call JsBeautify()<cr>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers like tabs.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

"vim-airline buffer tag line
"auto open all buffers
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"autoformater
"auto format on :w, should auto detect
au BufWrite * :Autoformat
"key map f3
noremap <F3> :Autoformat<CR>

"Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

