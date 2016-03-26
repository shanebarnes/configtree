:syntax on              " Enable syntax highlighting

:colorscheme pablo      " Set color scheme

:set colorcolumn=80     " Highlight right margin

:match ErrorMsg '\s\+$' " Highlight trailing whitespaces

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
