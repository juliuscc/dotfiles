# Fix correct pathes
export ZSH=/Users/jcelik/.oh-my-zsh
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"

#sudoless npm https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

#GO
export GOPATH=/Users/$(whoami)/Coding/go
export PATH=$GOPATH/bin:$PATH

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

ZSH_THEME=""

plugins=(zsh-autosuggestions zsh-syntax-highlighting)
# plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

for file in ~/.config-files/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Remove anoying beep from hyperterm
unsetopt beep

if [ -f /Users/jcelik/.tnsrc ]; then 
    source /Users/jcelik/.tnsrc 
fi

[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

autoload -U promptinit; promptinit
prompt pure
# added by travis gem
[ -f /Users/jcelik/.travis/travis.sh ] && source /Users/jcelik/.travis/travis.sh
