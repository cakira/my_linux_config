function is_win_dir
    if test (count $argv) -ge 1
        set dir_of_interest $argv[1]
    else
        set dir_of_interest $PWD
    end
    string match --quiet '/mnt/*' $dir_of_interest
end
