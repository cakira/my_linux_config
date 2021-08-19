function git_repository_root -d "Get the top level directory of the current git repository"
    git_is_repo; and git rev-parse --show-toplevel
end
