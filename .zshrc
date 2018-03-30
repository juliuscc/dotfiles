export ZSH=/Users/jcelik/.oh-my-zsh
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"

ZSH_THEME=""

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source $HOME/.config-scripts/.aliases

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