" ================================================================
" raiton's .vimrc (Managed via Dotfiles)
" ================================================================

" --- 基本表示 ---
set number              " 行番号を表示
set title               " ウィンドウタイトルにファイル名を表示
set showmatch           " 閉じ括弧入力時に対応する括弧を強調
set cursorline          " 現在の行をハイライト
set virtualedit=onemore " 行末の1文字先までカーソル移動可能に
set laststatus=2        " 常にステータスラインを表示

" --- 文字・インデント ---
set encoding=utf-8      " 文字コードをUTF-8に
set expandtab           " タブをスペースに変換
set tabstop=4           " タブ幅を4に
set shiftwidth=4        " 自動インデント幅を4に
set smartindent         " オートインデント

" --- 検索 ---
set ignorecase          " 検索時に大文字小文字を区別しない
set smartcase           " 大文字が含まれる場合は区別する
set incsearch           " 検索語入力中からヒットさせる

" --- カラー設定 ---
syntax on               " シンタックスハイライト
colorscheme desert      " 一旦標準で。後でDraculaプラグインを入れましょう