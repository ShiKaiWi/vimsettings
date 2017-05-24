set ts=4 sw=4
syntax enable
syntax on
colorscheme default
filetype indent on
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
set bg=light
set incsearch
"set nowrap
set ignorecase
set nocompatible
set wildmenu
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
set hlsearch
" 将 pathogen 自身也置于独立目录中，需指定其路径 
runtime bundle/pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()
" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2 " 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle
let mapleader=";"
filetype on
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
"a.vim configure
" *.cpp 和 *.h 间切换
"nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
"nmap <Leader>sch :AS<CR>
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
" 定义快捷键到行首和行尾
nmap <Leader>lb 0
nmap <Leader>le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "*y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "*p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
"nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
"nnoremap <leader>nw <C-W><C-W>
" 跳转至右方的窗口
"nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
"nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
"nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
"nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
"nmap <Leader>pa %
nmap <leader>o o<ESC>
nmap <leader>O O<ESC>
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
map <C-a> <esc>ggVG<CR>
"let g:SignatureMap = {
"        \ 'Leader'             :  "m",
"        \ 'PlaceNextMark'      :  "m,",
"        \ 'ToggleMarkAtLine'   :  "m.",
"        \ 'PurgeMarksAtLine'   :  "m-",
"        \ 'DeleteMark'         :  "dm",
"        \ 'PurgeMarks'         :  "mda",
"        \ 'PurgeMarkers'       :  "m<BS>",
"        \ 'GotoNextLineAlpha'  :  "']",
"        \ 'GotoPrevLineAlpha'  :  "'[",
"        \ 'GotoNextSpotAlpha'  :  "`]",
"        \ 'GotoPrevSpotAlpha'  :  "`[",
"        \ 'GotoNextLineByPos'  :  "]'",
"        \ 'GotoPrevLineByPos'  :  "['",
"        \ 'GotoNextSpotByPos'  :  "mn",
"        \ 'GotoPrevSpotByPos'  :  "mp",
"        \ 'GotoNextMarker'     :  "[+",
"        \ 'GotoPrevMarker'     :  "[-",
"        \ 'GotoNextMarkerAny'  :  "]=",
"        \ 'GotoPrevMarkerAny'  :  "[=",
"        \ 'ListLocalMarks'     :  "ms",
"        \ 'ListLocalMarkers'   :  "m?"
"        \ }
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" 显示/隐藏 MiniBufExplorer 窗口
"nmap <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
"map <leader>d :MBEbn<cr>
"map <leader>a :MBEbp<cr>

" 设置环境保存项
" set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存折叠状态
" au BufWinLeave * silent mkview
" 恢复折叠状态
" au BufRead * silent loadview
" 保存 undo 历史
"set undodir=~/.undo_history/
" 保存快捷键
nmap <leader>ss :SaveSession! my<cr>
" 恢复快捷键
nmap <leader>rs :OpenSession my<cr>

:let g:session_autoload = 'no'
:let g:session_autosave= 'no'
:let g:session_directory= './'

nnoremap <space> i<space><esc>
" nnoremap <tab> i<tab><esc>l
inoremap <leader>w <esc>:w<cr>
cnoremap <expr> %% getcmdtype()==':'?expand('%:h').'/':'%%'
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" this is ycm's config
" this part includes YCM's options
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:EclimCompletionMethod = 'omnifunc'
" let g:ycm_python_binary_path = 'python'
" let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_min_num_identifier_candidate_chars = 8
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" highlight YcmErrorLine guibg=#3f0000
" use elcim
" let g:EclimCompletionMethod = 'omnifunc'
" nnoremap <leader>jd :YcmCompleter GoTo<CR>
" nnoremap <leader>jh :YcmCompleter GoToInclude<CR>

color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
" set the folder color
highlight Folded ctermbg = 0


" vim-javascript setting
" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax

" vim-typescript setting
setlocal indentkeys+=0
