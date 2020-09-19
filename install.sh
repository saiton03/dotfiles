#/bin/bash -ue

DOTPATH=~/dotfiles

for f in .??*
do
    [[ $f == ".git" ]] || [[ $f == ".DS_STORE" ]] || [[ $f == ".vscode" ]] && continue
    ln -snfv "$DOTPATH"/"$f" "$HOME"/"$f"
done

