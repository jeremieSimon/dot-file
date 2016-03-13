[[ -s /Users/je.simon/.autojump/etc/profile.d/autojump.sh ]] && source /Users/je.simon/.autojump/etc/profile.d/autojump.sh

#shortcuts
alias l='ls'
alias ll='ls -al'
alias visualvm='~/Downloads/visualvm_138/bin/visualvm'
alias ssh='ssh -o ServerAliveInterval=60'
alias egrep='egrep --color'
alias grep='grep --color'

prod='je.simon@jobs-prod.hpc.criteo.prod'
dev='je.simon@jobs-user.hpc.criteo.prod'

goSsh () {
    ssh -o ServerAliveInterval=60 $1
}


bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
export PATH=$PATH:/Users/je.simon/dev/hadoop-central/hadoop-central
export PS1="\u@\h\w$ "
export PROMPT_COMMAND="history -a"
export EDITOR='subl -w'
export GIT_EDITOR=emacs
export GIT_SSH=`which ssh`
export PATH=`pwd`/infer/bin:$PATH
export GIT_SSH=/usr/bin/ssh

#git 
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias gdiff='git diff --color --stat'
alias glast='git log -1 --stat'
alias gunstage='git reset HEAD --'
alias gs='git status -sbu'
source ~/.git-completion.bash

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export KRB5CCNAME=/tmp/krb5cc_${UID}

#fasd
eval "$(fasd --init auto)"
alias g='fasd_cd -d'

#time
export PS1="\[\e[0;34m\]\@\[\e[m\]\[\e[0;31m\]|\[\e[m\]\[\e[0;32m\]\u-\W\[\e[m\]\[\e[0;32m\]$ \[\e[m\]"
