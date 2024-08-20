function fzf_open_in_editor
    set selected_file (fd --type f --hidden --follow --exclude .git | fzf --height 50% --preview "bat --color=always {}" --preview-window right,50%)
    if test -n "$selected_file"
        $EDITOR "$selected_file"
    end
    commandline -f repaint # promt would get wonky otherwise
end

# bind ctrl-f
bind \cf fzf_open_in_editor
