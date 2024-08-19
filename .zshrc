
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/melody/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line
bindkey "^[[3~" delete-char


export EDITOR=nvim

## Aliases
alias fucking='sudo'
alias ssh='kitten ssh'
alias l='ls --color=auto'
alias ll='ls -lha --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias open='xdg-open'
alias ff='fastfetch --config examples/16'
alias hf='hyfetch'
alias publicip='curl --silent ifconfig.me || echo "No connection"'
alias vpn-up='wg-quick up ~/Documents/vpn.config.conf && printf "VPN connected. \nNew public IP: $(curl --silent ifconfig.me)" || echo "Was not able to connect to VPN."'
alias vpn-reup='wg-quick up ~/Documents/vpn.config.conf && printf "VPN connected. \nNew public IP: $(curl --silent ifconfig.me)" || (echo "VPN is already active. Reconnecting..." && wg-quick down ~/Documents/vpn.config.conf && wg-quick up ~/Documents/vpn.config.conf && printf "VPN reconnected. \nNew public IP: $(curl --silent ifconfig.me)" || echo "Was not able to connect to VPN.")'
alias vpn-down='wg-quick down ~/Documents/vpn.config.conf && printf "VPN disconnected. \nNew public IP: $(curl --silent ifconfig.me)"'
alias vpn-status='sudo wg show'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias sync-mirrors='sudo systemctl restart reflector.service && cat /etc/pacman.d/mirrorlist'
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'


# Will probably get migrated into a setup script in the future:
dotfiles config --local status.showUntrackedFiles no


tty | grep -q 'tty' && Hyprland || fastfetch --config examples/16 ; eval "$(starship init zsh)"
