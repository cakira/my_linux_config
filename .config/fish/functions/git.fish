function git
    if is_win_dir
        /mnt/c/Program\ Files/Git/cmd/git.exe $argv
    else
        command git $argv
    end
end
