export CLICOLOR=1

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export HISTFILESIZE=10000
export HISTSIZE=10000
export ANSIBLE_OPTIONS="-c ssh --ask-pass"

eval "$(rbenv init -)"
