alias ll='ls -lh'
alias lla='ls -lha'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -i'
alias tmux='tmux -2'

force_color_prompt=yes

if [ -f ~/.bash_startup ]; then
    . ~/.bash_startup
fi
