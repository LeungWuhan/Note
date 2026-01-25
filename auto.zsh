#! /usr/bin/env zsh

	local commit_msg="${1:-Auto Push}" 
	git add . && git diff --quiet --cached || git commit -m "$commit_msg" && git push origin "$(git branch --show-current)" 2> /dev/null || git push -u origin "$(git branch --show-current)"
}
autoGit "$@"
