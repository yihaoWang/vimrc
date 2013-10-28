" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage vundle
Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline' 
Bundle 'php_getset.vim'
Bundle 'tomasr/molokai'
Bundle 'taglist.vim'
Bundle 'shawncplus/phpcomplete.vim'

filetype plugin indent on
colorscheme molokai 

" 設定編碼
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1
set termencoding=utf-8
set t_Co=256				" 支援 256 色
set number				" 行號
set ic					" 搜尋忽略大小寫
set ai					" 自動縮排
set hlsearch                            " 搜尋反白
set fo-=r                               " 換行不自動註解
syntax on				" 色彩標示
set cindent                             " 使用 c 的縮排方式
"set expandtab                           " 將 tab 換成 space
set shiftwidth=4                        " 縮排空白數
set softtabstop=4                       " 將 shift 設為 4 個字元
set cursorline				" 該行的線
set backspace=indent,eol,start          " 往前

" taglist setting
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"let Tlist_Auto_Open = 1		" 讓 Tlist 自動開啟
let Tlist_Show_One_File = 1         	" 不同時顯示多個文件的tag，只顯示當前文件的
let Tlist_Exit_OnlyWindow = 1           " 如果taglist窗口是最後一個窗口，則退出vim
let Tlist_Use_Right_Window = 1          " 在右側窗口中顯示taglist窗口 
"nnoremap <silent> <F8> :TlistToggle<CR>	" F8 為開啟/關閉 Tlist 的快速鍵

" tab 切換
nmap <C-t> :tabnew<cr>                  " 開心分頁 
nmap <C-h> :tabnext<cr> 
nmap <C-l> :tabprevious<cr>
nmap <C-e> :tabedit

" status line
set laststatus=2 			"Powerline need.
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

" 折疊
set foldmethod=indent
set foldlevel=5				" 顯示五層


