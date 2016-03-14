# Bash Config
# ===========

# Set the PATH
export PATH="./node_modules/.bin:/usr/local/bin:$PATH:/usr/bin:$HOME/bin"

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Increase the maximum number of lines contained in the history file
# (default is 500)
export HISTFILESIZE=10000

# Increase the maximum number of commands to remember
# (default is 500)
export HISTSIZE=10000

# Make things colorful
export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

. ~/prompt.sh



# Aliases
# =======

alias slt='open -a "Sublime Text 2"'

[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"
