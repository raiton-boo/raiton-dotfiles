" ================================================================
" raiton's .vimrc (Managed via Dotfiles)
" ================================================================

" --- 1. プラグイン管理 ---
call plug#begin('~/.vim/plugged')
  " Draculaテーマ本体
  Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" --- 2. 基本表示 ---
set number
set title
set showmatch
set cursorline
set virtualedit=onemore
set laststatus=2
set list
set listchars=tab:»-,trail:-,eol:↲

" --- 3. 文字・インデント ---
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set backspace=indent,eol,start

" --- 4. 検索 ---
set ignorecase
set smartcase
set incsearch
set hlsearch

" --- 5. カラー・見た目設定 ---
syntax on
set termguicolors

" ここでDraculaを適用
colorscheme dracula