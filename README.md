# Dotfiles

Configuration files for shell environment, managed using chezmoi.

If chezmoi is installed, can initialize using `chemzoi init jaspeyr` (or use `--ssh` flag to use ssh instead of https). Then run `chezmoi apply`.

To install chezmoi in `~/.local/bin`, initialize, and apply, run the command:
```
export PATH="$HOME/.local/bin:$PATH"
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- -b "$HOME/.local/bin" init --apply jaspeyr
```

