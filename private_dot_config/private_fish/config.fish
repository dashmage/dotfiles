if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    if test "$TERM" = alacritty
        set ZELLIJ_AUTO_ATTACH true
        set ZELLIJ_AUTO_EXIT false
        eval (zellij setup --generate-auto-start fish | string collect)
    end
end

fish_add_path ~/.local/bin/

alias nv=nvim
alias bat=batcat
alias cat=batcat
alias fd=fdfind
alias t='tmux new -A -s dashmage'
alias ze=zellij
alias ai=aichat

# chezmoi (https://www.chezmoi.io/quick-start/)
alias cz=chezmoi
alias czd="chezmoi cd"
alias cze='chezmoi edit --apply'

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Moving up dirs easier
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# git aliases
alias gs='git status -sb' # short status + show branch
alias gd='git diff'
alias gpl='git pull'
alias gps='git push'
alias gpf='git push --force-with-lease'
alias gc='git commit -ev'
alias ga='git add --all'
alias gt='git log --graph --oneline --decorate'
alias gl='git lg' # ensure git lg alias is present in .gitconfig
alias glp='git log -p'
alias gcan='git commit --amend --no-edit'
alias gco='git checkout'
alias gr='git remote -v'

export EDITOR="hx"
export BAT_THEME="Nord"

# remap fzf directory search to ctrl+f
fzf_configure_bindings --directory=\cf

# aichat
source ~/.config/fish/functions/aichat.fish
