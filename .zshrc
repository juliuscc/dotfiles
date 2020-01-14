# Pure Prompt + Hyper bug
export LANG="en_US.UTF-8"

# Fix correct paths
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

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# Flutter
export FLUTTER_HOME="/Applications/flutter"
export PATH="$FLUTTER_HOME/bin:$PATH"

# Hadoop
# export HADOOP_HOME="/usr/local/Cellar/hadoop/3.1.1/libexec"
# export HADOOP_CONFIG="$HADOOP_HOME/etc/hadoop"
# export PATH="$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH"

# export HBASE_HOME="/usr/local/Cellar/hbase/1.2.6.1/libexec"
# export HBASE_CONF="$HBASE_HOME/conf"
# export PATH="$HBASE_HOME/bin:$PATH"

# export HADOOP_CLASSPATH=$(hadoop classpath)
# export HBASE_CLASSPATH=$(hbase classpath)
# export HADOOP_CLASSPATH=$HADOOP_CLASSPATH:$HBASE_CLASSPATH

# Spark
# export SPARK_HOME="/usr/local/Cellar/apache-spark/2.3.1/libexec"
# export PATH="$SPARK_HOME/bin:$PATH"

# Python
# export PYTHONPATH="/Users/jcelik/anaconda2/bin/python"
# export PYTHONPATH=$PYTHONPATH:$SPARK_HOME/python:$SPARK_HOME/python/lib
# export PATH="$PYTHONPATH/bin:$PATH"

# Anaconda
# export CONDAPATH="/Users/jcelik/anaconda2"
# export PATH="$CONDAPATH/bin:$PATH"

# Apache Kafka
# export KAFKA_HOME="/usr/local/Cellar/kafka/2.0.0"
# export KAFKA_CONFIG="$KAFKA_HOME/libexec/config"
# export PATH="$KAFKA_HOME/bin:$PATH"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# AWS CLI
export PATH="/Users/jcelik/.local/bin:$PATH"

ZSH_THEME=""

plugins=(zsh-autosuggestions zsh-syntax-highlighting docker)
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

# fuzzy autocomplete
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
