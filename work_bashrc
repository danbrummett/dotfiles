shopt -s nocaseglob
set -o vi

export JAVA_HOME=$(/usr/libexec/java_home)
export GRADLE_HOME=/usr/local/bin/gradle
export WORKSPACE=~/src/github.homedepot.com
export CLICOLOR=1
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
eval $(gdircolors -b ~/.dir_colors)

#keep infinite command history
set HISTFILESIZE=-1
set HISTSIZE=-1

PATH=$PATH:~/bin

# run scripts
alias vi="vim"
alias virc="vim ~/.vimrc"
alias gf="~/scripts/getfiles"
alias wg="workin BQ_to_Graphite"
alias wf="workin Flatiron"

# make commands nicer
#alias ls="ls --color"
alias ls='gls --color=auto'
alias ll="ls -l"
alias la="ls -lah"
alias cgrep="grep --color=always"
alias rscp="rsync -aP" # cp with progress status
alias rsmv="rsync -aP --remove-source-files" # mv with progress status
alias gpom="git push origin master"
alias github="cd ~/src/github.homedepot.com/"
alias cyberark="cd ~/src/github.homedepot.com/cyberark-helpers/"
alias tls="tmux ls"
alias tatt="tmux att -t"
alias tkill="tmux kill-ses -t"
alias dstopall='docker stop $(docker ps -a -q)'
alias dremall='docker rm -f $(docker ps -a -q)'
alias drmiall='docker rmi -f $(docker images -q)'
alias di="docker exec -it"
alias de="docker exec"
alias dim="docker images"
alias dps="docker ps -a --format 'table {{.Names}}\t{{.Image}}\t{{.RunningFor}} ago\t {{.Status}}'"
alias dl="docker logs -f"
alias ds='docker stats $(docker ps --format={{.Names}})'
alias ctop='docker run --rm -ti --name=ctop -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest'
alias dive='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive:latest'

# pip hack????
alias pip="python -m pip"

# tmux magic
REMOTESESSION="remote"
REFSESSION="reference"
DEVSESSION="dev"

tmux has-session -t $REFSESSION &>/dev/null
if [ $? != 0 ] 
 then
    tmux new-session -s $REFSESSION -d
    tmux rename-window -t 0 "cheatsheets"
    tmux send-keys -t $REFSESSION "cat ~/tmuxcheatsheet" C-m
    tmux split-window -t $REFSESSION -h
    tmux send-keys -t $REFSESSION "cat ~/vimcheatsheet" C-m
fi

tmux has-session -t $DEVSESSION &>/dev/null
if [ $? != 0 ] 
 then
    tmux new-session -s $DEVSESSION -d
    tmux rename-window -t 0 "coding stuff"
    tmux send-keys -t $DEVSESSION "github" C-m
    tmux split-window -t $DEVSESSION -h
    tmux send-keys -t $DEVSESSION "github" C-m
    tmux new-window -n "pcf stuff"
fi

tmux has-session -t $REMOTESESSION &>/dev/null
if [ $? != 0 ] 
 then
    tmux new-session -s $REMOTESESSION -d
    tmux rename-window -t 0 "cplisa17"
    tmux send-keys -t $REMOTESESSION "cyberark" C-m
    tmux send-keys -t $REMOTESESSION "./cyber-cplisa17" C-m
    tmux new-window -n "store1"
    tmux send-keys -t $REMOTESESSION "cyberark" C-m
    tmux attach -t $REMOTESESSION
fi

complete -C /Users/dxb6828/bin/vault vault
