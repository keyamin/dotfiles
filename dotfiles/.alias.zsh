# vim
alias n='nvim'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# VSCode
alias c='code'
alias ci='code-insiders'

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

# aws
alias awsl='aws --profile localstack --endpoint-url http://localhost:4566'

# kubectl
alias kc='kubectl'

# minikube
alias mk='minikube'

# terraform
alias tf='terraform'
alias terrafrom='terraform'

# eza
if type "eza" > /dev/null 2>&1; then
  alias ls='eza --icons --git --time-style relative'
  alias la='ls -a'
  alias ll='ls -aahl'
fi

# bat
if type "bat" > /dev/null 2>&1; then
  alias cat='bat'
fi

