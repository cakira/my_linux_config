# Defined in /home/cakira/.config/fish/functions/gprune.fish @ line 1
function gprune
	git fetch --prune; and git checkout master; and git rebase; and git branch -vv | cut -c 3- | awk ' / gone\]/ { print $1 } ' | xargs -r git branch -d
end
