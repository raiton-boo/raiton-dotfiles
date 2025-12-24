# ================================================================
# 1. プロンプト最適化 (Powerlevel10k)
# ================================================================
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ================================================================
# 2. システム基本設定 (Environment)
# ================================================================
export LANG=ja_JP.UTF-8
export BAT_THEME="Dracula" # bat/delta 用テーマ

# Path 設定
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Zsh 履歴管理
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory      # 履歴を追記保存
setopt hist_ignore_dups   # 直前と同じコマンドは記録しない
setopt share_history      # 複数端末で履歴を共有

# シェルオプション
setopt autocd             # ディレクトリ名入力だけで移動
export REPORTTIME=2       # 実行に2秒以上かかった場合に統計を表示

# ================================================================
# 3. 補完・プラグイン (Auto-Completion & Plugins)
# ================================================================
fpath=(/opt/homebrew/share/zsh-completions /Users/raiton/.docker/completions $fpath)

zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zcompcache
autoload -Uz compinit && compinit -u

# Homebrew経由のプラグイン
[[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ================================================================
# 4. エイリアス・関数定義 (Custom Commands)
# ================================================================

# --- 4.1 基本操作 & 移動 ---
alias reload="source ~/.zshrc"
alias c="clear"
alias pathlist='echo $PATH | tr ":" "\n" | nl'
alias z='cd'
alias ..='z ..'
alias ...='z ../..'

# --- 4.2 開発短縮 & モダンツール置換 ---
alias g='git'
alias v='vim'
alias ls='eza --icons --classify --group-directories-first'
alias la='eza -a --icons --classify --group-directories-first'
alias ll='eza -lah --icons --classify --group-directories-first --time-style=long-iso --git'
alias lt='eza --tree --level=2 --icons --classify'

alias cat='bat'        # シンタックスハイライト付き表示
alias grep='rg'       # 爆速検索 (ripgrep)
alias find='fd'       # 高速ファイル検索
alias man='tldr'       # 実用的な例を表示
alias curl='curlie'    # 見やすいHTTPクライアント
alias diff='delta'     # 構文強調付き比較
alias bench='hyperfine' # 速度計測

# --- 4.3 監視・ネットワーク ---
alias df='duf'         # ディスク使用量 (グラフ)
alias du='dust'        # ディレクトリ容量 (ツリー)
alias top='btm'        # システム監視 (Bottom)
alias ps='procs'       # プロセス管理
alias ping='gping'     # 応答速度グラフ
alias dns='doggo'      # モダンなDNS調査
alias myip='curlie https://ipinfo.io'  # 自分のグローバルIP表示

# --- 4.4 演出・ジョーク (遊び系) ---
alias fetch='fastfetch'
alias worldmap='mapscii'
alias matrix='cmatrix'
alias マトリックス='cmatrix'
alias bonsai='cbonsai -p'
alias 盆栽='cbonsai -p'
alias ぼんさい='cbonsai -p'
alias bonsai-live='cbonsai -l -p'

# genact系演出
alias hack-pass='genact -m bruteforce'
alias hack-mine='genact -m cryptomining'
alias hack-bot='genact -m botnet'
alias hack-pkg='genact -m composer'
alias hack-math='genact -m julia'
alias hack-mem='genact -m memdump'
alias hack-scan='genact -m rkhunter'

# --- 4.5 ユーティリティ関数 ---
weather() { curl -s "wttr.in/${1:-Kawasaki}?m2"; }
port() { lsof -i ":$1"; }

extract() {
  if [[ $# -eq 0 ]]; then
    echo "\033[1;33mUsage: extract <file_name>\033[0m"
    return 1
  fi
  if [[ -f "$1" ]] ; then
    case "$1" in
      *.7z|*.zip|*.rar) 7z x "$1"      ;;
      *.tar.gz)         tar xzvf "$1"  ;;
      *.tar.bz2)        tar xjvf "$1"  ;;
      *)                echo "Error: '$1' は未対応です" ;;
    esac
  else
    echo "Error: '$1' は無効なファイルです"
  fi
}
alias ex="extract"

# ================================================================
# 5. 外部ツール初期化 (Initializers)
# ================================================================
[[ -f ~/.zprofile ]] && source ~/.zprofile
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"
command -v mise >/dev/null 2>&1 && eval "$(mise activate zsh)"

# fzf 設定
[[ -f /opt/homebrew/opt/fzf/shell/key-bindings.zsh ]] && source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
[[ -f /opt/homebrew/opt/fzf/shell/completion.zsh ]] && source /opt/homebrew/opt/fzf/shell/completion.zsh

# テーマ適用
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ================================================================
# 6. 起動時演出 (Cowsay Randomizer)
# ================================================================
if [[ -o interactive ]]; then
  (
    CHAR=$(command cowsay -l | grep -v "files in" | tr ' ' '\n' | grep -v '^$' | (gshuf -n 1 2>/dev/null || sort -R | head -n 1))
    printf "Hi らいと !\nTerminal Ready...\nHappy hacking !\n\nby ${CHAR:-default}\n" | command cowsay -n -f "${CHAR:-default}" | lolcat -f
  )
fi