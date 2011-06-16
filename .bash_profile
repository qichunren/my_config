# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


# fix for mysql2 gem load lib
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib

export NODE_PATH="/usr/local/lib/node"

export NLS_LANG="AMERICAN_AMERICA.UTF8"
export ORACLE_HOME=/opt/instantclient_10_2
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ORACLE_HOME

alias l='ls'
alias ls='ls -F'
alias rm='rm -i'
alias cp='cp -i'

# open a new tab on Terminal with the current working dir
function newtab {
	osascript -e "
		tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down
		tell application \"Terminal\" to do script \"cd \\\"$(PWD)\\\"\" in selected tab of the front window
	" > /dev/null 2>&1
}