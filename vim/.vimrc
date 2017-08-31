:syntax on  " Enable syntax highlighting
:set ruler  " Show cursor position in status bar

:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd ColorScheme * highlight Tab ctermbg=green guibg=green

:colorscheme pablo " Set color scheme

:set colorcolumn=80            " Highlight right margin
:match ExtraWhitespace /\s\+$/ " Highlight trailing whitespaces
:match Tab /\t/                " Highlight tabs

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
