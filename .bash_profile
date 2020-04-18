# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# dircolors
eval `gdircolors ~/.dir_colors`

# Set ENV variables
export PATH="/usr/local/bin:${PATH}"
export VISUAL=/usr/bin/vim
export EDITOR="$VISUAL"
export RBENV_ROOT=/usr/local/var/rbenv
export BAT_THEME="Nord"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Aliases
alias got='git '
alias get='git '
alias tree='tree -C'
alias lsa='gls --color -la'
alias ls='gls --color'
alias cat='bat'
alias help='tldr'
alias rm='rm -i'  # safety first

# Git
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Custom prompt
export PS1='\[\e[0;33m\]\u@\W\[\e[35m\]$(__git_ps1 " (%s)") \[\e[0;33m\]\$ \[\e[0m\]'

# Auto ls after cd
cd() { builtin cd "$@" && ls; }

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

