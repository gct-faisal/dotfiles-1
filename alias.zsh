alias sl=ls
alias ea=" $EDITOR $CONFIGDIR/alias.zsh; source $CONFIGDIR/alias.zsh"
alias ee=" $EDITOR $CONFIGDIR/export.zsh; source $CONFIGDIR/export.zsh"
alias es=" $EDITOR $HOME/.ssh/config;"
alias ev=" $EDITOR $CONFIGDIR/vim_runtime/my_configs.vim"
alias ez=" $EDITOR $CONFIGDIR/zshrc; source $CONFIGDIR/zshrc"
alias g='git'
alias v='vim'
alias c='clear'

##############
### UBUNTU ###
##############

alias ac="apt-cache search "
alias acs="apt-cache show "
alias sai="sudo apt-get install "
alias sau="sudo apt-get update"
alias saup="sudo apt-get update && sudo apt-get upgrade"

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

alias f="find . -iname "

###############
####  GIT  ####
###############

alias gst="git status"
alias ga="git add ."
alias gc="git commit -m "
alias gca="git commit -am "
alias gp="git push origin master"


##### global aliases
# zsh buch s.82 (z.B. find / ... NE)
alias -g NE='2>|/dev/null'
alias -g NO='&>|/dev/null'

# http://rayninfo.co.uk/tips/zshtips.html
alias -g G='| grep -'
alias -g P='2>&1 | $PAGER'
alias -g L='| less'
alias -g LA='2>&1 | less'
alias -g M='| most'
alias -g C='| wc -l'