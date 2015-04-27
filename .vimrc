if has("user_commands")
	command! -bang -nargs=? -complete=file W w<bang> <args>
endif
