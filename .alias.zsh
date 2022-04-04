# vim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# git
alias g='git'
alias ga='git add'
alias gcm='git commit -m'
alias gs='git switch'
alias gp='git push'
alias gpl='git pull'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsa='git stash apply'
alias gsx='git stash drop'

# docker
alias d='docker'
alias dil='docker image ls'
alias dib='docker image build'
alias dbx='docker buildx build --platform linux/amd64'
alias dcr='docker container rm'
alias dir='docker image rm'
alias dcl='docker container ls'
alias dcla='docker container ls -a'

# kubectl
alias kc='kubectl'

# minikube
alias mk='minikube'

# terraform
alias tf='terraform'
alias tfp='terraform plan'
alias tfa='terraform apply'
# pulumi
alias p='pulumi'
alias pu='pulumi up'

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

