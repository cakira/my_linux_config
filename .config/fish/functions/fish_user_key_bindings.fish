function fish_user_key_bindings
    bind -k f3 'echo; timew summary :ids; timew day; commandline -f repaint'
    bind -k f15 'echo; timew summary; commandline -f repaint' # shit-f3
    bind -k f4 "echo; timew stop;  commandline -f repaint"
    bind -k f9 "git status; commandline -f repaint"
    bind -k f12 "echo -ne '\ec\e[3J\e[H'; commandline -f repaint"
    bind \cc 'commandline ""'
end
