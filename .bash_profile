# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# dircolors
eval `gdircolors .dir_colors`

# Set ENV variables
export PATH="/usr/local/bin:${PATH}"
export EDITOR=/usr/bin/nano
export RBENV_ROOT=/usr/local/var/rbenv
export BAT_THEME="Nord"

# Aliases
alias got='git '
alias get='git '
alias tree='tree -C'
alias lsa='gls --color -la'
alias ls='gls --color'
alias cat='bat'
alias help='tldr'

# Git
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Old git status
# function parse_git_branch {
#    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }

#export PS1='\w$(__git_ps1 " (%s)")\$ '

# Custom prompt
# export PS1="\[\e[0;33m\]\u@\W\$(parse_git_branch) \\$ \[\e[0m\]"
# export PS1="\[\e[0;33m\]\u@\W$(__git_ps1 " (%s)")\\$ \[\e[0m\]"
export PS1='\[\e[0;33m\]\u@\W\[\e[35m\]$(__git_ps1 " (%s)") \[\e[0;33m\]\$ \[\e[0m\]'

# Auto ls after cd
cd() { builtin cd "$@" && ls; }

############################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
