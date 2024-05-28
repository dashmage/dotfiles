if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    source ~/canonical/novarc_serverstack
    set ZELLIJ_AUTO_ATTACH true
    set ZELLIJ_AUTO_EXIT true
    eval (zellij setup --generate-auto-start fish | string collect)
end

fish_add_path ~/.local/bin/

alias nv=nvim
alias bat=batcat
alias fd=fdfind
alias t='tmux new -A -s dashmage'
alias ze=zellij

# chezmoi (https://www.chezmoi.io/quick-start/)
alias cz=chezmoi
alias czd="chezmoi cd"
alias cze='EDITOR=hx chezmoi edit --apply'

alias j='juju'
alias js='juju status'
alias jsw='juju status --watch 5s'
alias os='openstack'
alias osl='openstack server list'

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

alias gpt4all="'/home/dashmage/personal/code/gpt4all/venv/bin/python' '/home/dashmage/personal/code/gpt4all/app.py' repl"

export EDITOR="hx"

# remap fzf directory search to ctrl+f
fzf_configure_bindings --directory=\cf
