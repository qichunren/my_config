[[ -s "/Users/caojinhua/.rvm/scripts/rvm" ]] && source "/Users/caojinhua/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# fix for mysql2 gem load lib
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib

export NODE_PATH="/usr/local/lib/node"

export NLS_LANG="AMERICAN_AMERICA.UTF8"
export ORACLE_HOME=/opt/instantclient_10_2
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ORACLE_HOME
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/Cellar/bin/
export NODE_PATH=$NODE_PATH:/Users/caojinhua/node_modules
alias l='ls'
alias ls='ls -F'
alias rm='rm -i'
#alias cp='cp -i'
alias faster='export http_proxy=http://192.168.8.25:1077'
alias faster2='export http_proxy=http://localhost:1080'
alias start_mongo='/usr/local/Cellar/mongodb/2.0.2-x86_64/bin/mongod --nojournal -f /Users/caojinhua/Dropbox/etc/mongod.conf'
alias cd_xampp='cd /Applications/XAMPP/htdocs'

# open a new tab on Terminal with the current working dir
function newtab {
  osascript -e "
    tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down
    tell application \"Terminal\" to do script \"cd \\\"$(PWD)\\\"\" in selected tab of the front window
  " > /dev/null 2>&1
}
