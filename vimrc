set nocompatible
syntax enable
filetype plugin indent on
    
" tab completion for files reccursively
set path+=**

set fdc=1

" Setting tab width
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Setting relative line numbers
:set number relativenumber

" setting text that appears on every line at end of file to ‖
" :set fillchars="|"
" Sets mapleader to space
let mapleader = " "

" remaps sequence to exit file to dir
:noremap <Leader>pv :Ex
:noremap <Leader>d "_d
:noremap <Leader>p "_dP

:noremap <Leader>ci i#include <stdio.h>\n<esc>
:noremap <Leader>cm iint main(){<tab>}<esc>k

" :set foldmethod=syntax

:noremap <leader>beg obegin(equation){<cr><Tab><cr>}<esc>k$a
:noremap <leader>lass :r ~/.vim/snip/latexAssignment<cr>gg/?/g<cr>

" plug.vim
call plug#begin()

" List your plugins here

" latexrun for vimtex
Plug 'aclements/latexrun'

" vimtex for running latex from vim
Plug 'lervag/vimtex'

call plug#end()

"" vimtex

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on


" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

"" Or with a generic interface:
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
" let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","
