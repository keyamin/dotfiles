# vim
alias n='nvim'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# VSCode
alias c='code'

# git
alias g='git'
alias ghps='gh pr list -a @me --json number,title,headRefName,author | jq -r '\''.[] | "\(.number) - \(.headRefName) - \(.title)"'\'' | fzf --height 30% --prompt "Select PR: " | awk '\''{print $3}'\'' | xargs -I % git switch %'
alias ghpo='jq -s '\''.[0] + .[1]'\'' <(gh pr list -a @me --json number,title,headRefName,author) <(gh pr list --search "review-requested:@me" --json number,title,headRefName,author) | jq -r '\''.[] | "\(.number) - \(.headRefName) - \(.title) - \(.author.login)"'\'' | fzf --height 30% --prompt "Select PR: " | awk '\''{print $1}'\'' | xargs -I % gh pr view % -w'
alias ghpc='gh pr create -a @me -w'

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

