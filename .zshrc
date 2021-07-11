autoload -U compinit
compinit
# 色設定
autoload -U colors; colors

# もしかして機能
setopt correct

# PCRE 互換の正規表現を使う
setopt re_match_pcre

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

#curlでno matches foundを回避
setopt nonomatch

#Prompt
PROMPT='%(?.%{$fg[green]%}.%{$fg[blue]%})%(?!(*^-^) !(*;-;%)? )%{${reset_color}%} %n:%~ $ '
SPROMPT="%{$fg[magenta]%}%{$suggest%}(*'~'%)? < Perhaps: %B%r%b %{$fg[magenta]%}right? [Yes!(y), No!(n),a,e]:${reset_color} "
# PROMPT='%m@%n %1~ %#'

#環境変数系（ユーザー定義）
export CLICOLOR=1

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zhistory
# メモリに保存される履歴の件数
export HISTSIZE=10000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=10000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
# historyを共有
setopt share_history
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# 古いコマンドと同じものは無視
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開
setopt hist_expand
# 履歴をインクリメンタルに追加
setopt inc_append_history
# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# alias
alias ll='ls -l'

export PATH=$PATH:/Users/saiton03/.nodebrew/node/v12.4.0/bin

# boost
export CPLUS_INCLUDE_PATH="/usr/local/Cellar/boost/1.73.0/include" 

#pkg-config
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"

# obs-studio
export QTDIR=/usr/local/opt/qt
export OBS_DIR=/Users/saiton03/Downloads/obs-studio

# golang
export PATH="$PATH:/home/saiton03/go/bin"
export GOPATH=$HOME/go/
export GOBIN=$GOPATH/bin

#binutils (gobjdump..)
export PATH=$PATH:/usr/local/opt/binutils/bin

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# zsh-completions
autoload -Uz compinit
compinit

# ls colors
export LSCOLORS=gxfxcxdxbxegedabagacad

