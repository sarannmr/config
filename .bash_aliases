hostname=`hostname`

# Common aliases
alias gittagwithdate='git log --tags --simplify-by-decoration --pretty="format:%ai %d" | sort'
alias hacklab='ssh saranwrap@shell.hacklab.to -o "ProxyCommand corkscrew 172.16.1.162 3128 shell.hacklab.to 22"'
alias win7='spicec -h 127.0.0.1 -p 5900'
alias pc='proxychains'
case $hostname in 

sticky.vrt.telus.com) 
    alias 164vm='ssh -4 -c arcfour,blowfish-cbc -XC vrt@172.16.8.164 "gnome-terminal"'
    alias 206vm='ssh -4 -c arcfour,blowfish-cbc -XC vrt@172.16.8.206 "gnome-terminal"'
    alias 235vm='ssh -4 -c arcfour,blowfish-cbc -XC vrt@172.16.8.235 "gnome-terminal"'
    alias work='ssh -4 -c arcfour,blowfish-cbc -XC saran@172.16.8.230 "xfce4-terminal -x tmux attach"'
    export http_proxy="http://172.16.1.2:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;

dhcp230)
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

lxr)
    export http_proxy="http://172.16.1.162:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;

godel)
    alias hdd="sudo hdparm -C /dev/sd[a-i]" 
    alias sleepnow="sudo hdparm -y /dev/sd[a-i]"
    alias tarski='ssh -4 -XC saran@tarski.logic "xfce4-terminal -x tmux attach"'
    ;;

esac

export PATH=/usr/local/apache2/bin:/usr/local/samba/bin:$HOME/bin:$PATH

# Common aliases
alias gittagwithdate='git log --tags --simplify-by-decoration --pretty="format:%ai %d" | sort'
alias win7='spicec -h 127.0.0.1 -p 5900'
case $hostname in 

sticky.vrt.telus.com) 
    alias 164vm='ssh -4 -c arcfour,blowfish-cbc -XC vrt@172.16.8.164 "gnome-terminal"'
    alias 206vm='ssh -4 -c arcfour,blowfish-cbc -XC vrt@172.16.8.206 "gnome-terminal"'
    alias 235vm='ssh -4 -c arcfour,blowfish-cbc -XC vrt@172.16.8.235 "gnome-terminal"'
    alias work='ssh -4 -c arcfour,blowfish-cbc -XC saran@172.16.8.230 "xfce4-terminal -x tmux attach"'
    export http_proxy="http://172.16.1.2:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;

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

esac

export PATH=/usr/local/apache2/bin:/usr/local/samba/bin:$HOME/bin:$PATH
