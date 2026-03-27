# Armen's zshrc

# Source shared shell config (PATH, aliases, env)
[ -f ~/.shellrc ] && source ~/.shellrc

# === History ===
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

# === Completion ===
autoload -Uz compinit && compinit

# Case-insensitive, then partial-word, then substring matching
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Tab-tab shows menu, arrow keys to navigate
zstyle ':completion:*' menu select
setopt auto_menu
unsetopt menu_complete

# Group completions by type with headers
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}── %d ──%f'
zstyle ':completion:*:warnings' format '%F{red}── no matches ──%f'

# Colorize file completions like ls
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Show all completions on empty prompt + tab
zstyle ':completion:*' insert-tab false

# Fuzzy match (allow 1 error for every 3 chars typed)
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Cache completions for speed
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# === Key Bindings ===
# Use emacs-style keybindings (same muscle memory as bash/readline)
bindkey -e

# Up/down searches history using current prefix
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Ctrl-left/right to jump by word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Alt-left/right for Mac terminals
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# Home/End
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Delete key
bindkey "^[[3~" delete-char

# Ctrl-delete to kill word forward
bindkey "^[[3;5~" kill-word

# === Options ===
setopt auto_cd
setopt correct
setopt interactive_comments
setopt no_beep

# Prompt is initialized via starship in .shellrc
