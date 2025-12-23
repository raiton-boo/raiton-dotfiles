" ================================================================
" raiton's .vimrc (Managed via Dotfiles)
" ================================================================

" --- 1. プラグイン管理 (Draculaを入れる準備) ---
" まだインストールしていなければ、後ほど curl コマンドを実行します
call plug#begin('~/.vim/plugged')
  " Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" --- 2. 基本表示 (raiton's base) ---
set number              " 行番号を表示
set title               " ウィンドウタイトルにファイル名を表示
set showmatch           " 閉じ括弧入力時に対応する括弧を強調
set cursorline          " 現在の行をハイライト
set virtualedit=onemore " 行末の1文字先までカーソル移動可能に
set laststatus=2        " 常にステータスラインを表示
set list                " 不可視文字（タブ等）を可視化
set listchars=tab:»-,trail:-,eol:↲ " 不可視文字の見た目設定

" --- 3. 文字・インデント (raiton's base) ---
set encoding=utf-8      " 文字コードをUTF-8に
set expandtab           " タブをスペースに変換
set tabstop=4           " タブ幅を4に
set shiftwidth=4        " 自動インデント幅を4に
set smartindent         " オートインデント
set backspace=indent,eol,start " バックスペースの挙動を自然に

" --- 4. 検索 (raiton's base) ---
set ignorecase          " 検索時に大文字小文字を区別しない
set smartcase           " 大文字が含まれる場合は区別する
set incsearch           " 検索語入力中からヒットさせる
set hlsearch            " 検索結果をハイライト（Esc連打で消す設定を推奨）

" --- 5. カラー・見た目設定 ---
syntax on               " シンタックスハイライト
set termguicolors       " 真のカラー（True Color）を有効化（現代のVimには必須）

" Draculaを入れるまでは desert を使い、入れた後はここを dracula に変えます
colorscheme desert