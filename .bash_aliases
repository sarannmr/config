hostname=`hostname`

# Common aliases
alias gittagwithdate='git log --tags --simplify-by-decoration --pretty="format:%ai %d" | sort'

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

workness)
    export http_proxy="http://172.16.1.162:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;

workdesk)
    export http_proxy="http://dev4.vrt.telus.com:80"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress"
    ;;

dhcp164)
    export http_proxy="http://172.16.1.162:3128"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.vrt.telus.com,172.16.0.0/16"
    ;;



thinness)
    export no_proxy="localhost,127.0.0.1"
    ;; 

esac

# Functions

proxied_git () 
( 
    export GIT_PROXY_COMMAND=/tmp/gitproxy;
    cat  > $GIT_PROXY_COMMAND <<EOF
#!/bin/bash
/usr/bin/socat - PROXY:172.16.1.162:\$1:\$2,proxyport=3128
EOF
    chmod +x $GIT_PROXY_COMMAND;
    git "$@"
)

proxied_ssh () 
( 
    export SSH_PROXY_COMMAND=/tmp/gitproxy;
    cat  > $SSH_PROXY_COMMAND <<EOF
#!/bin/bash
/usr/bin/socat - PROXY:172.16.1.162:\$1:\$2,proxyport=3128
EOF
    chmod +x $SSH_PROXY_COMMAND;
    ssh "$@"
)


