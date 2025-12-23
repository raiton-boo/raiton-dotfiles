# ================================================================
# 1. Powerlevel10k Instant Prompt
# ================================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ================================================================
# 2. 環境変数 / 基本設定
# ================================================================
export LANG=ja_JP.UTF-8
export BAT_THEME="Dracula"  # batのテーマを固定

# Ruby Path (Homebrew用)
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# .zprofile の読み込み
[[ -f ~/.zprofile ]] && source ~/.zprofile

# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt hist_ignore_dups
setopt share_history

# 基本オプション
setopt autocd
export REPORTTIME=2

# ================================================================
# 3. 補完システム (Compinit)
# ================================================================
fpath=(/opt/homebrew/share/zsh-completions /Users/raiton/.docker/completions $fpath)

zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zcompcache

autoload -Uz compinit
compinit -u

# ================================================================
# 4. プラグイン読み込み (Brew経由)
# ================================================================
[[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ================================================================
# 5. エイリアス・関数定義
# ================================================================

# --- 基本操作 ---
alias reload="source ~/.zshrc"       # 設定ファイルの即時反映
alias c="clear"                      # 画面を掃除
alias pathlist='echo $PATH | tr ":" "\n" | nl' # PATHを1行ずつ表示

# --- 移動・ショートカット ---
alias ..='cd ..'                     # 1つ上の階層へ
alias ...='cd ../..'                 # 2つ上の階層へ
alias g='git'                        # Gitを1文字で
alias v='vim'                        # Vimを1文字で

# --- モダンツールへの置き換え ---
alias ls='eza --icons --classify --group-directories-first'
alias la='eza --icons --classify --group-directories-first -a'
alias ll='eza --icons --classify --group-directories-first -lah --time-style=long-iso --octal-permissions --git'
alias lt='eza --icons --classify --group-directories-first --tree --level=2'

alias cat='bat'
alias grep='rg'
alias find='fd'
alias df='duf'
alias du='dust'
alias ping='gping'
alias speed='speedtest'
alias emoji='emoj'

# --- お遊び・演出系 ---
alias matrix='cmatrix'
alias マトリックス='cmatrix'
alias bonsai='cbonsai -p'
alias bonsai-live='cbonsai -l'
alias 盆栽='cbonsai -p'
alias ぼんさい='cbonsai -p'

# Genact シリーズ
alias hack-pass='genact -m bruteforce'
alias hack-mine='genact -m cryptomining'
alias hack-bot='genact -m botnet'
alias hack-pkg='genact -m composer'
alias hack-math='genact -m julia'
alias hack-mem='genact -m memdump'
alias hack-scan='genact -m rkhunter'

# --- 特殊関数 (cowsay & fortune) ---

# 注意: ここで alias cowsay=... を書かないことでエラーを回避します
cowsay() {
  if [ -z "$1" ]; then
    command cowsay "Hello raiton!" | lolcat -f
  else
    command cowsay "$@" | lolcat -f
  fi
}

# fortune: json形式として認識させ、Draculaテーマの多彩な色を適用
alias fortune='fortune -s | bat -l json --style=plain'

# --- 強力な解凍関数 (extract) ---
extract() {
  if [ -f "$1" ] ; then
    case "$1" in
      *.7z|*.zip|*.rar) 7z x "$1"      ;;
      *.tar.gz)         tar xzvf "$1"  ;;
      *.tar.bz2)        tar xjvf "$1"  ;;
      *)                echo "'$1' は extract で解凍できません" ;;
    esac
  else
    echo "'$1' は有効なファイルではありません"
  fi
}
alias ex="extract"
alias uzip="7z a"

# ================================================================
# 6. ツール初期化 (mise, zoxide)
# ================================================================
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"
command -v mise >/dev/null 2>&1 && eval "$(mise activate zsh)"

# ================================================================
# 7. Powerlevel10k 設定
# ================================================================
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ================================================================
# 8. 起動時ランダム演出 (ガチャ)
# ================================================================
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

RAND_VAL=$(( RANDOM % 20 ))
if [ $RAND_VAL -eq 0 ]; then
  sl
else
  CASE=$(( RANDOM % 4 ))
  case $CASE in
    0|1) fortune -s | cowsay | lolcat -f ;;
    2)   printf "Hi raiton!\nTerminal Ready. Happy Coding!\nLet tools work for you!\n" | lolcat -f ;;
    3)   cbonsai -p ;;
  esac
fi