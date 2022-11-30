#!/usr/bin/env zsh
set -eu

# source zshrc to ensure plugins are cloned if possible
zsh -c '. ~/.zshrc'

# setup completions if needed
compdir=~/.local/share/zsh/completions
[[ -d $compdir ]] || mkdir -p "$compdir"

if [[ $(command -v chezmoi )  && ! $(command -v _chezmoi) ]]; then
    chezmoi completion zsh > "$compdir/_chezmoi"
fi
if [[ $(command -v poetry )  && ! $(command -v _poetry) ]]; then
    poetry completions zsh > "$compdir/_poetry"
fi
if [[ $(command -v gh )  && ! $(command -v _gh) ]]; then
    gh completion -s zsh > "$compdir/_gh"
fi