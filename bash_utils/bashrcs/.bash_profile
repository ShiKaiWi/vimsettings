alias chrome="/usr/bin/open -a /Applications/Google\ Chrome.app " 
alias gb="go build"
export GOPATH="$HOME/github-workspace/yungewu-cloudapp_go/"
export PATH="$HOME/bin:$HOME/WWW/tools/arcanist/bin:$GOPATH/bin:$PATH"
export PYTHONPATH="/Users/xkwei/github-workspace/yungewu-cloudapp/apiserver/:$PYTHONPATH"

alias webdev="cd $HOME/github-workspace/devops/pack && python pack.py dev $HOME/github-workspace/yungewu-cloudapp_go $HOME/go web_path=$HOME/github-workspace/yungewu-cloudapp_gui/hpc-webclient/dist && cd -"

alias godev="cd $HOME/github-workspace/devops/pack && python pack.py dev $HOME/github-workspace/yungewu-cloudapp_go $HOME/go && cd -"

alias cleandev="cd $HOME/github-workspace/devops/pack && python pack.py dev $HOME/github-workspace/yungewu-cloudapp_go $HOME/go drop_database=1 && cd -" 

alias checkin='export TASKID=$(git branch | grep \* | cut -d " " -f2 | cut -d "-" -f1); arc land && arc close $TASKID -s FixReady'

alias pack="cd $HOME/github-workspace/devops/pack && python pack.py && cd -"

alias bgw="cd $GOPATH/src/lambdacal.com/nscc && go build ./..."

alias uuid="export LC_CTYPE=C && cat /dev/urandom | tr -c -d 'a-zA-Z0-9' | fold -w 32 | head -n 1"
