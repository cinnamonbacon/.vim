syntax on
filetype plugin indent on

" Setting tab width
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Setting relative line numbers
:set relativenumber

" Setting text that appears on every line at end of file to ‖
:set fillchars=eob:‖

" Sets mapleader to space
let mapleader = " "

" remaps sequence to exit file to dir
:noremap <Leader>pv :Ex

:noremap <Leader>ci i#include <stdio.h>\n<esc>
:noremap <Leader>cm iint main(){<tab>}<esc>k

" plug.vim
call plug#begin()

" List your plugins here

" latexrun for vimtex
Plug 'aclements/latexrun'

" vimtex for running latex from vim
Plug 'lervag/vimtex'

" code completion
Plug 'neoclide/coc.nvim'

call plug#end()

"" vimtex

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

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


"" Coc

"suggest.noselect": true

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
