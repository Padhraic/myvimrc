alias tmp='cd ~/temp'
alias la='ls -la'
alias mc='mc -x'

export CLICOLOR=1
source ~/.git-completion.sh
PS1='\[\033[37m\]\W\[\033[0m\]$(__git_ps1 " (\[\033[35m\]%s\[\033[0m\])") \$ '
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

