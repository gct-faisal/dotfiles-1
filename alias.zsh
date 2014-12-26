alias ea=" $EDITOR $CONFIGDIR/alias.zsh; source $CONFIGDIR/alias.zsh"
alias ee=" $EDITOR $CONFIGDIR/export.zsh; source $CONFIGDIR/export.zsh"
alias es=" $EDITOR $HOME/.ssh/config;"
alias ev=" $EDITOR $HOME/.vim_runtime/my_configs.vim"
alias ez=" $EDITOR $CONFIGDIR/zshrc; source $CONFIGDIR/zshrc"
alias et=" $EDITOR $CONFIGDIR/tmux.conf;"
alias g='git'
alias v='vim'
alias svim="sudo vim"
alias c='clear'
alias t='tail -f'

alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias h='history'
alias hgrep="fc -El 0 | grep"
alias help='man'
#alias j='jobs'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

alias whereami=display_info

alias sl=ls
# List only directories and symbolic
# links that point to directories
alias lsd='ls -ld *(-/DN)'

# List only file beginning with "."
alias lsa='ls -ld .*'

## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'


alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias f="find . -iname "

# List open port
alias ports='netstat -tulanp'

# Redis Commander
alias redisc='sudo redis-commander --redis-port 6379 --redis-host localhost | NO '

## MOUNT windows shared disk
alias automount="source $CONFIGDIR/autoumount.zsh"
alias mwsd="sudo mount -t cifs -o username=bisconti,domain=INTERDOM,uid=1000,gid=1000 //sdev06/SE2000/ /media/se2000 "
alias mpub="sudo mount -t cifs -o username=bisconti,domain=INTERDOM,uid=1000,gid=1000 //sdev06.groups.local/iwwwroot$ /media/pub"
alias mtrans="sudo mount -t vboxsf TRANSIT /media/transit "

#### SUPER CUSTOM ####
alias tpubit="tree /media/pub/Presta-Web/iTransfer/"

##############
#### TMUX ####
##############

alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'


#############
#### SSH ####
#############

# X port forwarding with encryption/compression
alias sshx="ssh -c arcfour,blowfish-cbc -XC"

# Reverse SSH tunneling 
# ---------------------
# -R for reverse bind information
# -g Allows remote hosts to connect to local forwarding ports
# -N Do not execute a remote command 
alias sshr="ssh -fN -R 7000:localhost:22 veggiemonk@veggiemonk.info -g"

# Dynamic port (SOCKS) tunneling
alias sshtd="ssh -D 7001 veggiemonk@veggiemonk.info -N"


##############
###  CURL  ###
##############

alias cx="curl -X "
alias cxg="curl -X GET "
alias cxc="curl -X PUT "
alias cxu="curl -X POST "
alias cxd="curl -X DELETE "


##############
### SERVER ###
##############

alias server="python -m SimpleHTTPServer "

alias zut='sudo $(fc -ln -1)'

##############
### DOCKER ###
##############
#http://csaba.palfi.me/random-docker-tips/
alias dps="docker ps | less -S"
alias dpsa="docker ps -a | less -S"
alias dim="docker images"
alias dil="docker images | grep latest"
alias drm="docker rm $(docker ps -a -q)"
alias drmi="docker rmi $(docker images -q)"

# IMAGES

alias couchdb="docker run -d -p 5984:5984 -e COUCHDB_PASS='groups' tutum/couchdb"
alias redisdb="docker run -d -p 6379:6379 -e REDIS_PASS='groups' tutum/redis"

##############
### UBUNTU ###
##############

alias ac="apt-cache search "
alias acs="apt-cache show "
alias sai="sudo apt-get install "
alias sair="sudo apt-get install --reinstall"
alias sau="sudo apt-get update"
alias sap="sudo apt-get upgrade"
alias saup="sudo apt-get update && sudo apt-get upgrade"

alias updatevb="sudo apt-get install --reinstall virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"

###############
####  GIT  ####
###############

alias gst="git status"
alias ga="git add ."
alias gc="git commit -m "
alias gca="git commit -am "
alias gp="git push"
alias gu="git pull"


##### global aliases


# `cd` is a lot work
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Command line head / tail shortcuts
# http://rayninfo.co.uk/tips/zshtips.html
alias -g H='| head'
alias -g T='| tail'
#alias -g G='| grep'
alias -g G='| grep '
alias -g L="| less"
alias -g M="| most"
alias -g C='| wc -l'

alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

# zsh buch s.82 (z.B. find / ... NE)
#alias -g NE='2>|/dev/null'
alias -g NO='&>|/dev/null'


# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
