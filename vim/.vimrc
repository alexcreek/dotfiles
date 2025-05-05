" use normal colors
set background=light

" make the delete key work correctly
set backspace+=start

" enable filetype detection
filetype plugin on

" disable automatically continuing comments on a new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" enable matching braces and conditionals with % key
runtime macros/matchit.vim

" enable syntax highlighting
syntax on

" highlight matching brackets
set showmatch

" hide search results highlighting
set nohlsearch

" enable case insensitive matching
set ignorecase


""" indentation
" http://vim.wikia.com/wiki/Indenting_source_code
" affects soft tabs and hard tabs; set to enable soft tabs
set expandtab

" number of spaces a soft tab is
set softtabstop=2

" affects what happens when you press >>, << or ==.
set shiftwidth=2

""" indentation overrides
autocmd Filetype python set sts=4 sw=4
autocmd Filetype go set sts=4 sw=4
autocmd Filetype yacc set sts=8 sw=8
autocmd Filetype javascript set sts=4 sw=4

""" syntax overriddes
autocmd BufNewFile,BufRead,BufReadPost Jenkinsfile set syntax=groovy

""" plugins
" enable pathogen plugin manager
execute pathogen#infect()

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_yaml_checkers = ['yamllint']    " pip install yamllint --user
let g:syntastic_sh_checkers = ['shellcheck']    " brew install shellcheck
let g:syntastic_json_checkers = ['jsonlint']    " npm install -g jsonlint
let g:syntastic_python_checkers = ['python']
let g:syntastic_python_python_exec = 'python3'
