#                                     _
#                             _______| |__  _ __ ___
#                            |_  / __| '_ \| '__/ __|
#                           _ / /\__ \ | | | | | (__
#                          (_)___|___/_| |_|_|  \___|
#

#==============================================================#
##              Zinit                                         ##
#==============================================================#
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

#==============================================================#
##              Zinit Plugins                                 ##
#==============================================================#
# 補完
zinit light zsh-users/zsh-autosuggestions

# シンタックスハイライト
zinit light zdharma-continuum/fast-syntax-highlighting

# Ctrl+r でコマンド履歴を検索
zinit light zdharma-continuum/history-search-multi-word

#==============================================================#
##              starship                                      ##
#==============================================================#
eval "$(starship init zsh)"

#==============================================================#
##              zoxide                                        ##
#==============================================================#
eval "$(zoxide init zsh)"

#==============================================================#
##              asdf                                          ##
#==============================================================#
. /opt/homebrew/opt/asdf/libexec/asdf.sh

#==============================================================#
##              fzf                                           ##
#==============================================================#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#==============================================================#
##              alias                                         ##
#==============================================================#
[ -f ~/.alias.zsh ] && source ~/.alias.zsh