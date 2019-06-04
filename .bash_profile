source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# orange
#PS1='\[\e[38;2;255;100;0m\]\W\[\033[00;35m\]$(__git_ps1 " (%s)")\[\e[38;2;255;100;0m\] ➤ \[\033[00m\] '
# blue
PS1='\[\e[00;34m\]\W\[\033[00;35m\]$(__git_ps1 " (%s)")\[\e[00;34m\] ➤ \[\033[00m\] '
export PS1

#export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$HOME/Library/Python/3.7/bin:$PATH"
export HISTSIZE=50000

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# unfuck iterm2
unset COLORTERM
unset COLORFGBG
