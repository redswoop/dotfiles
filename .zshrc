export PATH="$HOME/.local/bin:$PATH"

# eza aliases (modern ls replacement)
alias ls='eza'
alias l='eza -l'
alias la='eza -la'
alias lt='eza --tree'

# bat as pager/less replacement
export PAGER='bat'
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -l man -p'"
export BAT_THEME='Monokai Extended'
export LESS='-R -M -i -j5 --mouse'
export LESSOPEN='| bat --color=always --style=plain %s'
alias cat='bat'
alias less='bat'

# jk (ps replacement)
alias jk='jk -p -t'

# dotfiles management (bare git repo)
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
