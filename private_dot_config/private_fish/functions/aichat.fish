function _aichat_fish
    set -l _old (commandline)
    if test -n $_old
        echo -n "⌛"
        commandline -f repaint
        commandline (aichat -e $_old)
    end
end
bind \eg _aichat_fish

function q
    # Check if there are any arguments
    if test (count $argv) -gt 0
        aichat -r concise $argv
    else
        echo "Concise response to a question with aichat"
    end
end
