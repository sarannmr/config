hostname=`hostname`

# Common aliases
alias gittagwithdate='git log --tags --simplify-by-decoration --pretty="format:%ai %d" | sort'
alias hacklab='ssh saranwrap@shell.hacklab.to -o "ProxyCommand corkscrew 172.16.1.162 3128 shell.hacklab.to 22"'
alias pc='proxychains'
case $hostname in 

# Work
dhcp230)
    alias ldap1='ssh -4 -c arcfour,blowfish-cbc root@172.16.1.111'
    export http_proxy="http://172.16.1.162:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;

static9)
    export http_proxy="http://172.16.1.162:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;

dhcp164)
    export http_proxy="http://172.16.1.162:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;

# Home
godel)
    alias hdd="sudo hdparm -C /dev/sd[a-i]" 
    alias sleepnow="sudo hdparm -y /dev/sd[a-i]"
    alias gauss='ssh -4 -XC saran@gauss.logic "xfce4-terminal -x tmux attach"'
    ;;

turing)
    alias sy="sudo systemctl start synergys"
    alias ny="sudo systemctl stop synergys"
    ;;
esac

export PATH=$HOME/bin:$PATH
