alias du='du -h --max-depth=1'
alias df='df -h'
alias ipt='iptables -vnL --line-numbers'
alias ll='ls -lah'
alias yum='yum -y'
alias apt-get='apt-get -y'
alias vi='vim'

### Service control
alias rex='service nginx restart'

# set re command to restart apache
which httpd &> /dev/null
rc=$?
if [[ $rc -eq 0  ]]; then
    alias re='service httpd restart'
fi
unset rc

which apache2 &> /dev/null
rc=$?
if [[ $rc -eq 0  ]]; then
    alias re='service apache2 restart'
fi
unset rc
