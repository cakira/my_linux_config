function greview
    set -l commit "HEAD~$argv[1]"
    git log -1 $commit --stat
    git difftool -d $commit~ $commit
end
