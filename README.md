## TODO:
- Add usefull README
    - Dependencies
    - General information
    - Screenshots
- Add installation script

## How to install Dotfiles:
- Make sure you installed Hyprland and all programs listed in hyprland.conf
- Run `alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'`
- Run `git clone --bare REPO-CLONE-URL-HERE $HOME/dotfiles`
- Run `dotfiles config --local status.showUntrackedFiles no`
- Run `dotfiles checkout`
- Finally restart your shell to be able to update the dotfiles via the `dotfiles pull origin main` command.
