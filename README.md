# dotfiles

Bare git repo dotfiles for macOS, Linux, and Windows (git-bash).

## Fresh machine setup

```bash
git clone --bare https://github.com/redswoop/dotfiles.git ~/.dotfiles && \
  git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout -f && \
  ~/.local/bin/dotfiles-bootstrap
```

Then log in to GitHub when you're ready:

```bash
gh auth login
```

## What's included

- **Shell**: zsh/bash configs with shared `.shellrc`
- **Prompt**: [Starship](https://starship.rs) with nerd font icons
- **Tools**: eza, bat, delta, fd, ripgrep, fzf, zoxide, dust, htop, lazygit, jq, yq
- **Bootstrap**: auto-installs everything via Homebrew (macOS/Linux) or Scoop (Windows)

## Deliberately not tracked

- `~/.claude/` — AI-agent memory/config. Personal context, not shell config; this repo is public.
- `~/.gitconfig.local` — machine-specific git config (credential helpers). Pulled in via `[include]`.
