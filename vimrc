" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage vundle
Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdtree'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline' 

filetype plugin indent on

" 設定編碼
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1
set fileencoding=utf-8
set termencoding=utf-8
set t_Co=256				" 支援 256 色
colorscheme Tomorrow-Night-Bright 

set number				" 行號
set ic					"搜尋忽略大小寫
set ai					" 自動縮排
syntax on				" 色彩標示
"set noeb				" turn off error bell
"set vb t_vb= 				" turn off visual bell
"set tabstop=4
"set shiftwidth=4			" 縮排空白數
"set softtabstop=4 
"set nobackup				" 不要備份檔
set cursorline				" 該行的線
set textwidth=0
"set wrap

" taglist setting
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"let Tlist_Auto_Open = 1		" 讓 Tlist 自動開啟
let Tlist_Show_One_File = 1         	" 不同時顯示多個文件的tag，只顯示當前文件的
let Tlist_Exit_OnlyWindow = 1           " 如果taglist窗口是最後一個窗口，則退出vim
let Tlist_Use_Right_Window = 1          " 在右側窗口中顯示taglist窗口 
"nnoremap <silent> <F8> :TlistToggle<CR>	" F8 為開啟/關閉 Tlist 的快速鍵

" winManager setting
let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
let g:persistentBehaviour = 0		" 所有檔案關閉時自動離開 vim
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <F12> :WMToggle<cr> 		" F12 為開啟/關閉 winmannager

" status line
set laststatus=2 			"Powerline need.
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

" tab 切換
"nmap <C-t> :tabnew<cr>                  " 增加檔案
"nmap <C-n> :tabnext<cr> 
"nmap <C-p> :tabprevious<cr>
"nmap <C-e> :tabedit

" 折疊
set foldmethod=indent
set foldlevel=5				" 顯示五層


