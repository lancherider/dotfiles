alias gitlog="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gotopi="ssh -l pi 192.168.2.24 -p 22022"
alias rdep="r10k deploy environment production -pv"
alias config="/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME"
alias ag="ag --color-line-number '1;36' --color-match '1;91'"
alias httpie="/usr/local/opt/httpie/bin/http"
alias wake="caffeinate -disu"
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
vd () {
	for VAGRANT_HOST in $@
	do
		cert_name=$(vagrant ssh puppet -c "sudo puppet cert list --all" 2>/dev/null | grep "${VAGRANT_HOST}-${USER}\.dev.*" | awk '{gsub("\"", "", $2);print $2}')
		echo -n "Press ENTER to delete ${cert_name}..."
		read
		vagrant ssh puppet -c "sudo puppet cert clean ${cert_name}"
		vagrant destroy -f ${VAGRANT_HOST}
	done
}
vyum () {
	vagrant global-status | grep pgoodman | sed 's/  */#/g' | cut -d'#' -f2 |
	while read VAGRANT_HOST
	do
		vagrant up "${VAGRANT_HOST}"
		vagrant ssh "${VAGRANT_HOST}" -c "sudo yum -y update"
		vagrant halt "${VAGRANT_HOST}"
	done
}
