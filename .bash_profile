#!/bin/bash 

alias hello='echo Hello mon ami comment vas-tu ?'
alias lsa='ls -a'
alias delete='rm -Rf'

alias go_to_script='cd /mnt/d/Louise/Scripts'
alias go_to_workspace='cd ~/Workspace'
alias go_to_script='cd /mnt/d/Louise/Symfony/project_blog'

alias create_symfony_project='composer create-project symfony/website-skeleton'
alias server_start='bin/console server:start'
alias server_stop='bin/console server:stop'


COLOR="\[\033[0m\]"
RED="\[\033[0;31m\]"

function get_error()
{
	if [[ $? -ne 0 ]]
	then 
		echo "(1)"
	else 
		echo "()"
	fi
}

PS1="$RED\$(get_error) \W $COLOR \$ "

cd ~/Workspace 
