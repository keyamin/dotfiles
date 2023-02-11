# vim
alias n='nvim'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# VSCode
alias c='code'

# git
alias g='git'

# docker
alias d='docker'
alias di='docker image'
alias dc='docker container'
alias dn='docker network'
alias dv='docker volume'
alias dbx='docker buildx build --platform linux/amd64'

# aws
alias awsl='aws --profile localstack --endpoint-url http://localhost:4566'

# kubectl
alias kc='kubectl'

# minikube
alias mk='minikube'

# terraform
alias tf='terraform'
alias terrafrom='terraform'
alias tfp='terraform plan'
alias tfa='terraform apply'

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

