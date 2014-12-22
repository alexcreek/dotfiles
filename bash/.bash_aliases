alias du='du -h --max-depth=1'
alias ipt='iptables -vnL --line-numbers'
alias ll='ls -lah'
alias vi='vim'
alias yum='yum -y'
alias apt-get='apt-get -y'

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
