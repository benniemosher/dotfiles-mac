function fish_prompt
	printf '%s%s%s \a%s%s%s' (whoami) \
		(prompt_pwd)
	__fish_git_prompt ' (%s)'
	printf ' %s$%s '
end
