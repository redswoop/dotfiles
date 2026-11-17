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
- **Font**: JetBrains Mono + Nerd Font glyphs everywhere. Linux: stock JetBrains Mono with Symbols Nerd Font as a fontconfig fallback (also the system `monospace`); macOS/Windows: the patched `JetBrainsMono Nerd Font`. Terminal configs tracked where they're plain files (`foot`)
- **Tools**: eza, bat, delta, fd, ripgrep, fzf, zoxide, dust, htop, lazygit, jq, yq
- **Bootstrap**: auto-installs everything via Homebrew (macOS/Linux) or Scoop (Windows), fonts included (Windows path is untested)

## Deliberately not tracked

- `~/.claude/` — AI-agent memory/config. Personal context, not shell config; this repo is public.
- `~/.shellrc.local` — machine-specific shell config (where software lives, hardware aliases). Sourced last by `.shellrc`.
- `~/.gitconfig.local` — machine-specific git config (credential helpers). Pulled in via `[include]`.
