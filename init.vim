call plug#begin('~/.local/share/nvim/plugged')
Plug 'github/copilot.vim'
Plug 'direnv/direnv.vim'
Plug 'Shougo/vimproc.vim'
Plug 'maxwell-bland/vimshell-copilot.vim'
Plug 'Shougo/unite.vim'
Plug 'luochen1990/rainbow'
Plug 'wbthomason/packer.nvim'
call plug#end()

" Let's set up the copilot.vim plugin
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")

" Enable rainbow parentheses!
let g:rainbow_active = 1

" Finally, let's evaluate init.lua
lua require('init')
