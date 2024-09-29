# directly open file in $EDITOR
function fzf_open_in_editor
    set selected_file (fd --type f --hidden --follow --exclude .git | fzf --height 50% --preview "bat --color=always {}" --preview-window right,50%)
    if test -n "$selected_file"
        $EDITOR "$selected_file"
    end
    commandline -f repaint
end

# just print file path
function fzf_search_in_directory
    set selected_file (fd --type f --hidden --follow --exclude .git | fzf --height 50% --preview "bat --color=always {}" --preview-window right,50%)
    if test -n "$selected_file"
        commandline --current-token --replace "$selected_file"
    end
    commandline -f repaint
end

# bind ctrl-f
bind \cf fzf_search_in_directory
