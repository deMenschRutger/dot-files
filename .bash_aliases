alias ll='ls -l'
alias lla='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias tmux='tmux -2'

force_color_prompt=yes

if [ -f ~/.bash_startup ]; then
    . ~/.bash_startup
fi
