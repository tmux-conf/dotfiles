[[ $TERM == '' ]] && export LC_ALL=en_US.utf8
[[ $TERM == 'linux' ]] && export LC_ALL=en_US.utf8
[[ $TERM == 'rxvt-unicode-256color' ]] && export LC_ALL=ja_JP.utf8

# editor
export EDITOR=vim

# alias
alias ll='ls -laF'
alias l='ls -F'
alias lt='ls -lt'
alias ls='ls -lh'
alias v='vim'
alias vi='vim'
alias df='df -hT'

# プロンプト
#PROMPT='%m:%F{yellow}[%~]%f ' 
PROMPT='%F{yellow}%~%f > ' 
#PROMPT='%~%f > ' 

#補完機能を使用する
autoload -U compinit
compinit
zstyle ':completion::complete:*' use-cache true
#zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=1

# 同時に起動しているzshの間でhistoryを共有する
setopt share_history

# 同じコマンドをhistoryに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンドをhistoryに残さない
setopt hist_ignore_space

# historyに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
setopt extended_glob

# コマンドのスペルミスを指摘
setopt correct

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=1000000

# ヒストリの一覧を読みやすい形に変更
HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S]"

# 補完時にヒストリを自動的に展開する
setopt HIST_EXPAND

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# 補完時にヒストリを自動的に展開
setopt hist_expand

# 入力途中の履歴補完を有効化する
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# 何も入力されていないときのTABでTABが挿入されるのを抑制
zstyle ':completion:*' insert-tab false

# 補完でカラーを使用する
autoload colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

# 履歴のインクリメンタル検索でワイルドカード利用可能
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

# start neofetch
#neofetch

# uname
#uname -a

# welcome.sh
#$HOME/sh/welcome.sh

# tmux If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux
