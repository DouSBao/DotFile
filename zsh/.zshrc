# =====================================
# Variables
# =====================================
# Zsh dot directory
export ZDOTDIR=$HOME/.config/zsh

# Autoload path
export FPATH=$ZDOTDIR/autoload:$FPATH

# History
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.zsh_history

# =====================================
# Options
# =====================================
# Disable dup history command
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt APPENDHISTORY

# Disable deep
unsetopt BEEP

# =====================================
# Autoload
# =====================================
# Completion
autoload -U compinit

# =====================================
# Prompt
# =====================================
export PROMPT=" %F{yellow}%B%1d %(?.%F{green}.%F{red}) %f%b"

# =====================================
# Auto Start
# =====================================
compinit
neofetch

# =====================================
# Alias
# =====================================
alias ll="exa -alrh --icons --group-directories-first --git"

# =====================================
# Plugins
# =====================================
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-autopair/autopair.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
