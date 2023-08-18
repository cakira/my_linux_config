function is_wsl1
    return (uname -r | grep Microsoft > /dev/null)
end

# This is a configuration for fish running in WSL 2.
# I disabled the native Windows graphic server (WSLg) because it's still buggy
# And I'm using Vnc
set -x WIN_HOST (awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null) 
if is_wsl1
    set -x DISPLAY 127.0.0.1:0
else
    set -x DISPLAY $WIN_HOST:0
end
set -x WAYLAND_DISPLAY ""

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/cakira/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

abbr -a -- gdt 'git difftool -d' 
abbr -a -- tw timew 
abbr -a -- gs 'git switch' 
abbr -a --position anywhere -- ... …
