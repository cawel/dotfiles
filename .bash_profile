# git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

function ruby_gemset_ps1 {
	# if using rvm and inside a git dir
	current_rvm_gemset=`~/.rvm/bin/rvm-prompt i v p g` 
	if [ -n "$current_rvm_gemset" ] && [ -n "`__git_ps1`" ]; then
		echo "[$(__git_ps1 $current_rvm_gemset)] " 
	fi
}


# git prompt
GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[32;40m\]$(~/.rvm/bin/rvm-prompt i v g)\[\e[0m\] \u@\h \W$(__git_ps1 " (%s)")\$ ';
#export PS1="\[\e[32;40m\]\$(~/.rvm/bin/rvm-prompt)\[\e[0m\] \u@\h \W`__git_ps1 " (%s)") ` ";
#export PS1='\u@\h $(__git_ps1 "`ruby_gemset`")\W$(__git_ps1 " (%s)") \$ ';
#export PS1='\u@\h $(ruby_gemset_ps1)\W$(__git_ps1 " (%s)") \$ ';
#PS1="\[\e[32;40m\]\$(~/.rvm/bin/rvm-prompt)\[\e[0m\] $PS1"   # from Hugo

export TERM=xterm-256color

# rake auto-complete
export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}
_rakecomplete() {
	COMPREPLY=($(compgen -W "`rake -s -T | awk '{{print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
	return 0
}
complete -o default -o nospace -F _rakecomplete rake

# aliases
alias ls='ls -G'
alias ll='ls -lAthF'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export PATH=/usr/local/bin:$PATH
export EDITOR="vim"
alias r='rails'
