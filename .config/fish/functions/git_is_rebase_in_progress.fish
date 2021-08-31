function git_is_rebase_in_progress
test -e (git rev-parse --git-path rebase-apply) -o -e (git rev-parse --git-path rebase-merge)
end
