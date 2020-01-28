shopt -s nocaseglob
set -o vi

#export VAR=value

PS1='\[\e]0;\w\a]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '

# keep infinite command history
set HISTFILESIZE=-1
set HISTSIZE=-1

# add my home bin to the path for ease of dev
PATH=$PATH:~/bin

# make my life easier
alias vi='vim'
alias virc='vimr ~/.vimrc'
alias gpom='git push origin master'
alias github='cd ~/src/github.com/'

# make common commands more pleasant
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -lah'
alias cgrep='grep --color-always'
alias rscp='rsync -aP' # same thing as cp, but with a progress bar!
alias rsmv='rsync -aP --remove-source-files' # same thing as mv, but with a progress bar!

# dubious tmux miasma
alias tls='tmux ls'
alias tatt='tmux at -t'
alias tkill='tmux kill-ses -t'

# docker stuff that might get memorized some day
alias dstopall='docker stop $(docker ps -a -q)'
alias dockerrmall='docker rm -f $(docker ps -a -q)'
alias dockerrmiall='docker rmi -f $(docker images -q)'
alias dei='docker exec -it'
alias de='docker exec'
alias dps='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}"'
alias dl='docker logs -f'

# pip is annoying aka the worst pip hack in history
alias pip='python -m pip'

# use tmux magic to auto build a nice session
DEVSESSIONNAME="dev"
REFSESSIONNAME="reference"

tmux has-session -t $DEVSESSIONNAME &>/dev/null
if [ $? != 0 ]
then
	tmux new-session -s $DEVSESSIONNAME -d
	tmux rename-window -t 0 "coding stuff"
	tmux send-keys -t $DEVSESSIONNAME "github" C-m
	tmux new-window -n "infrastructure stuff"
	tmux send-keys -t $DEVSESSIONNAME "github" C-m
fi

tmux has-session -t $REFSESSIONNAME &>/dev/null
if [ $? != 0 ]
then
	tmux new-session -s $REFSESSIONNAME -d
	tmux rename-window -t 0 "cheatsheets"
	tmux send-keys -t $REFSESSIONNAME "cat ~/tmuxcheatsheet " C-m
	tmux split-window -t $REFSESSIONNAME -h 
	tmux send-keys -t $REFSESSIONNAME "cat ~/vimcheatsheet " C-m
fi

