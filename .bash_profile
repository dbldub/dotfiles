#aliases
alias ll='ls -hal'
alias l='ll'

PS1='\[\e[1;32m\][\u@\h \w]\$\[\e[0m\] '

IP=`echo $SSH_CONNECTION | awk '{print $1}'`
IPINFO=`curl -s ipinfo.io/${IP}`
echo -e 'ALERT Shell Access on:' `date` "\n\n" `who` "\n\n" ${IPINFO} | mail -s "Alert: Access from `who | cut -d"(" -f2 | cut -d")" -f1`" <email>
