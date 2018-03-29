export ZSH=/Users/jcelik/.oh-my-zsh

ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias zshconfig="code ~/.zshrc"
alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

function watch {
	while true;
	do a=$($@);
	clear;
	echo "$(date)\n\n$a";
	sleep 1;
	done
}

function watch-git {
	while true;
	do clear;
	date;
	git status;
	sleep 1;
	done
}

function sublime {
	open -a Sublime\ Text $1;
}

function subl {
	open -a Sublime\ Text $1;
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$@"
}

unsetopt beep

if [ -f /Users/jcelik/.tnsrc ]; then 
    source /Users/jcelik/.tnsrc 
fi

[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

autoload -U promptinit; promptinit
prompt pure