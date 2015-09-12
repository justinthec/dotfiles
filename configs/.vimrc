if has("user_commands")
	command! -bang -nargs=? -complete=file W w<bang> <args>
endif
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
