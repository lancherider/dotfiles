## Terminal prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats \('%b'\)
setopt PROMPT_SUBST
PROMPT='%F{red}%*%f %F{green}%~%f %F{yellow}${vcs_info_msg_0_}%f $ '

## History
HISTSIZE=10000
SAVEHIST=100000

## Aliases
alias rdep="r10k deploy environment production -pv"
alias config="/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME"
alias ag="ag --color-line-number '1;36' --color-match '1;91'"
alias httpie="/usr/local/opt/httpie/bin/http"
alias wake="caffeinate -disu"
alias vbm=VBoxManage
alias keyrm="ssh-keygen -R"
alias pingy="/Users/pgoodman/git/_ping/_ping.sh"
alias wttr="curl wttr.in/28806?u"
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
# PowerCLI
powercli() {
    docker run --rm -it --name powercli -v ~/Downloads/chocolatey:/mnt/cdrom prg/powercli
}

# K8S
export GPG_TTY=$(tty)
source <(/usr/local/bin/kubectl completion zsh)
source <(/usr/local/bin/kustomize completion zsh)
