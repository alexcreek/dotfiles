# tabbed completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# aws cli tabbed completion
complete -C aws_completer aws

# history
export HISTSIZE=50000

if [[ -f "$HOME/.bash_aliases" ]]; then
    . "$HOME"/.bash_aliases
fi

# unfuck iterm2
unset COLORTERM
unset COLORFGBG

# thanks apple
export BASH_SILENCE_DEPRECATION_WARNING=1

# shush brew
export HOMEBREW_NO_ENV_HINTS=1

# orange
# shellcheck disable=SC2089
PS1='\[\e[38;2;255;100;0m\]\W\[\033[00;35m\]$(__git_ps1 " (%s)")\[\e[38;2;255;100;0m\] ➤ \[\033[00m\] '

# blue
# shellcheck disable=SC2089
#PS1='\[\e[00;34m\]\W\[\033[00;35m\]$(__git_ps1 " (%s)")\[\e[00;34m\] ➤ \[\033[00m\] '

# shellcheck disable=SC2090
export PS1

export GPG_TTY
GPG_TTY=$(tty)

# path
export PATH="$HOME/bin:/opt/homebrew/bin:/Users/alex/.local/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
