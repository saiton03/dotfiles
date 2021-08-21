#!/bin/bash -ue

DOTPATH=~/dotfiles

for f in .??*
do
    [[ $f == ".git" ]] || [[ $f == ".DS_STORE" ]] || [[ $f == ".vscode" ]] && continue
    if [[ $f == ".config" ]]; then
        ln -snfv "$DOTPATH"/"$f"/* "$HOME"/"$f"/
        continue
    fi
    ln -snfv "$DOTPATH"/"$f" "$HOME"/"$f"
done

