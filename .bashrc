alias gotopi="ssh -l pi 192.168.155.2 -p 22022"
alias rdep="r10k deploy environment production -pv"
alias config="/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME"
alias ag="ag --color-line-number '1;36' --color-match '1;91'"
alias httpie="/usr/local/opt/httpie/bin/http"
alias wake="caffeinate -disu"
alias vbm=VBoxManage
alias keyrm="ssh-keygen -R"
alias pingy="/Users/pgoodman/git/_ping/_ping.sh"
# Docker aliases
alias dm=docker-machine
alias dps="docker ps"
alias de="docker exec"
alias ds="docker start"
# Vagrant aliases
alias vu="vagrant up"
alias vssh="vagrant ssh"
alias vs="vagrant status"
alias vgs="vagrant global-status"
alias vh="vagrant halt"
alias vp="vagrant provision"
# Lastpass aliases
alias lpin="lpass login"
alias lpout="lpass logout"
alias lps="lpass show"
alias lpl="lpass ls"
#Git aliases
alias gp="git pull"
alias gc="git commit"
alias ga="git add"
alias gs="git status"
alias gco="git checkout"
alias gitlog="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
# Terraform aliases
alias tf=terraform
# platform/dev shovel
shovel() ( /Users/pgoodman/git/dev/script/run shovel "$@"; )
