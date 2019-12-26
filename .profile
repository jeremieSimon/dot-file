

source ~/.git-completion.bash

# java version mgmt
alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
#alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
#alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
#alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
#alias j7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`; java -version"

# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin
#export GOROOT="/usr/local/Cellar/go/1.13/libexec"
GO111MODULE='on go get .'


# custom his
HISTSIZE=10000
MY_BASH_BLUE="\033[0;34m" #Blue
MY_BASH_NOCOLOR="\033[0m"
HISTTIMEFORMAT=`echo -e ${MY_BASH_BLUE}[%F %T] $MY_BASH_NOCOLOR `
HISTSIZE=20000
HISTFILESIZE=20000
hstr --show-configuration >> ~/.bashrc
export HSTR_CONFIG=keywords-matching,hicolor,debug,case-sensitive
alias hh='hstr'
bind '"\C-r": "\C-ahstr -- \C-j"'

#shortcuts
alias l='ls'
alias ll='ls -al'
alias visualvm='~/Downloads/visualvm_138/bin/visualvm'
alias ssh='ssh -o ServerAliveInterval=60'
alias egrep='egrep --color'
alias grep='grep --color'
alias subl='sublime'

# go thing
alias go12='/Users/jeremiesimon/dev/open/go1.12/bin/go'
alias go13='/Users/jeremiesimon/dev/open/go1.13/bin/go'

goSsh () {
    ssh -o ServerAliveInterval=60 $1
}

# func
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
export HISTFILESIZE=300000
export PS1="\u@\h\w$ "
export PROMPT_COMMAND="history -a"
export EDITOR='subl -w'
export GIT_EDITOR=emacs
export GIT_SSH=`which ssh`
export PATH=`pwd`/infer/bin:$PATH
export GIT_SSH=/usr/bin/ssh

#git 
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias grank='git ls-files -z | xargs -0n1 git blame -w --line-porcelain | grep -a "^author " | sort -f | uniq -c | sort -r'
alias gdiff='git diff --color --stat'
alias glast='git log -1 --stat'
alias gunstage='git reset HEAD --'
alias gs='git status -sbu'
source ~/.git-completion.bash
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GIT_SSH=$(which ssh)
export KRB5CCNAME=/tmp/krb5cc_${UID}

#fasd
eval "$(fasd --init auto)"
alias g='fasd_cd -d'

#time
export PS1="\[\e[0;34m\]\@\[\e[m\]\[\e[0;31m\]|\[\e[m\]\[\e[0;32m\]\u-\W\[\e[m\]\[\e[0;32m\]$ \[\e[m\]"

#emacs:
export PATH=/Applications/Emacs.app/Contents/MacOS:$PATH
export EDITOR="emacs -nw"
alias emacs='emacs -nw'

#sugar
alias cat='bat'
