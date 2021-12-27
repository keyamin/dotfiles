# vim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# git
alias g='git'
alias gia='git add'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gs='git stash'
alias gsu='git stash -u'
alias gsa='git stash apply'
alias gsx='git stash drop'

# docker
alias d='docker'
alias di='docker images'
alias db='docker build'
alias dbx='docker buildx build --platform linux/amd64'
alias dr='docker rm'
alias dri='docker rmi'
alias dl='docker ps'
alias dla='docker ps -a'

# terraform
alias tf='terraform'

# exa
if type "exa" > /dev/null 2>&1; then
  alias l='exa --icons --git'
  alias ls='l'
  alias la='exa -a --icons --git'
  alias ll='exa -aahl --icons --git'
  alias lt='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias lta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
fi

# bat
if type "bat" > /dev/null 2>&1; then
  alias cat='bat'
fi

