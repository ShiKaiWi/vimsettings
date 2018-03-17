"""""""""""""""""""""""""""""""""""""""""
""" Vundle Config
"""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-commentary'
Plugin 'ap/vim-buftabline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin.git'
Plugin 'dgryski/vim-godef'
Plugin 'davidhalter/jedi-vim'
Plugin 'pangloss/vim-javascript.git'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim.git'
Plugin 'ternjs/tern_for_vim'
Plugin 'xolox/vim-misc'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'xolox/vim-session'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-surround.git'
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'


" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set ts=4 sw=4
syntax on
filetype on
filetype plugin indent on
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
" color dracula
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
" execute pathogen#infect()

""""""""""""""""""""""""""""""
""" shortcuts 
""""""""""""""""""""""""""""""
nmap - G
vnoremap <Leader>y "*y
nmap <Leader>p "*p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :qa!<CR>
nmap <leader>o o<ESC>
nmap <leader>O O<ESC>
map <C-A> <esc>ggVG<CR>
inoremap <leader>w <esc>:w<cr>
nnoremap <silent> <C-L> :<C-U>nohlsearch<CR><C-L>

""""""""""""""""""""""""""""""
" Plugin: NERDTree
"""""""""""""""""""""""""""""" 
nnoremap <C-B> :NERDTreeToggle<CR>
let NERDTreeWinPos="right"
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'


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
nmap th <C-O>
let g:godef_split=0

"""""""""""""""""""""""""""""
" Plugin: ctrlp-vim
"""""""""""""""""""""""""""""
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'


"""""""""""""""""""""""""""""
" Plugin: nerdtree-git-plugin 
"""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
   \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


"""""""""""""""""""""""""""""
" Plugin: ap/vim-buftabline
"""""""""""""""""""""""""""""
set hidden
nnoremap <c-K> :bnext<CR>
nnoremap <c-J> :bprev<CR>
nnoremap q :bdelete<CR>

""""""""""""""""""""""""""""
" Plugin: fzy
""""""""""""""""""""""""""""
function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <C-P> :call FzyCommand("ag . --silent -l -g ''", ":e")<cr>

"""""""""""""""""""""""""""
" Plugin: ack.vim
"""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif