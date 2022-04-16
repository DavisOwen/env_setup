export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export FZF_DEFAULT_COMMAND='find * -type f'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

stty werase undef
bind '"\C-w": "$(find * -type d | fzf)"'

# needed to find homebrew, may depend on env
# eval "$(/opt/homebrew/bin/brew shellenv)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
