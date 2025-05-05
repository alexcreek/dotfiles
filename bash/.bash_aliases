# git
alias ff='git status'
alias fc='git commit'
alias fl='git log'
alias fd='git --no-pager diff'
alias fdd='git diff'
alias fr='git remote -v'
alias fpp="git pull origin $(git branch --show-current)"

function fp {
  BRANCH="$1"
  git push origin "${BRANCH:=$(git branch --show-current)}"
}

# random
alias ll='ls -lhG'
alias ls='ls -G'

# ssh
alias go-jump='ssh alex@jumphost'
alias asdf='ssh michael'
