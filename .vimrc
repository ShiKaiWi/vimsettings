set ts=4 sw=4
syntax enable
syntax on
filetype on
filetype indent on
filetype plugin on
set foldmethod=syntax
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch
set nowrap
set ignorecase
set nocompatible
set wildmenu
set gcr=a:block-blinkon0
" disable scroll bar 
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" disable menu & tool bar 
set guioptions-=m
set guioptions-=T
" show the status bar always 
set laststatus=2
set ruler
set number
set cursorline
set hlsearch
set nofoldenable
let g:session_autosave=0
let g:session_autoload=0

""""""""""""""""""""""""""""""
""" Color: settings
""""""""""""""""""""""""""""""
set bg=light
color desert
hi CursorLine term=bold cterm=bold guibg=Grey40
highlight Folded ctermbg = 0

""""""""""""""""""""""""""""""
" leader settings
""""""""""""""""""""""""""""""
let mapleader=";"


""""""""""""""""""""""""""""""
""" CMD: commentary 
""""""""""""""""""""""""""""""
autocmd FileType apache setlocal commentstring=#\ %s

""""""""""""""""""""""""""""""
""" Plugin: pathogen
""""""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""""""""""""""
""" shortcuts 
""""""""""""""""""""""""""""""
vnoremap <Leader>y "*y
nmap <Leader>p "*p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :qa!<CR>
nmap <leader>o o<ESC>
nmap <leader>O O<ESC>
map <C-a> <esc>ggVG<CR>
nnoremap <space> i<space><esc>
inoremap <leader>w <esc>:w<cr>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" Go to tab by number
"   noremap <leader>1 :b 1<cr>
"   noremap <leader>2 :b 2<cr>
"   noremap <leader>3 :b 3<cr>
"   noremap <leader>4 :b 4<cr>
"   noremap <leader>5 :b 5<cr>
"   noremap <leader>6 :b 6<cr>
"   noremap <leader>7 :b 7<cr>
"   noremap <leader>8 :b 8<cr>
"   noremap <leader>9 :b 9<cr>
"   noremap <leader>0 :b 0<cr>

""""""""""""""""""""""""""""""
" Plugin: NERDTree
"""""""""""""""""""""""""""""" 
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1



""""""""""""""""""""""""""""""
" Plugin: vim-javascript 
"""""""""""""""""""""""""""""" 
" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

""""""""""""""""""""""""""""""
" Plugin: vim-typescript
"""""""""""""""""""""""""""""" 
setlocal indentkeys+=0
  
""""""""""""""""""""""""""""""
" Plugin: vim-CtrlP 
"""""""""""""""""""""""""""""" 
set runtimepath^=~/.vim/bundle/ctrlp.vim


""""""""""""""""""""""""""""""
" Plugin: vim-go
"""""""""""""""""""""""""""""" 
autocmd FileType go nmap tl gd
nmap th <C-o>
let g:godef_split=0

"""""""""""""""""""""""""""""
" Plugin: ctrlp-vim
"""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'


"""""""""""""""""""""""""""""
" Plugin: ctrlsf-vim
"""""""""""""""""""""""""""""
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
