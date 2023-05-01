call plug#begin('~/.local/share/nvim/plugged')
Plug 'github/copilot.vim'
Plug 'direnv/direnv.vim'
Plug 'Shougo/vimproc.vim'
Plug 'maxwell-bland/vimshell-copilot.vim'
Plug 'Shougo/unite.vim'
Plug 'luochen1990/rainbow'
Plug 'wbthomason/packer.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Let's set up the copilot.vim plugin
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")

" Enable rainbow parentheses!
let g:rainbow_active = 1

" Finally, let's evaluate init.lua
lua require('init')

" Awesome VimShell prompt
let g:vimshell_prompt_expr =
\ 'escape(fnamemodify(getcwd(), ":t")."/λ", "\\[]()?! ")." "'
let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+λ '
" Ovewrite status line for VimShell
let g:vimshell_force_overwrite_statusline = 1

" Set leader mapping
let mapleader = " "

" Tabnext is 'leader + /':
nnoremap <leader>/ :tabnext<CR>

" Tabprev is 'leader + z':
nnoremap <leader>z :tabprevious<CR>

" Hide / show neotree:
nnoremap <leader>t :Neotree toggle<CR>

" Pop up a VimShell with s:
nnoremap <leader>s :VimShell<CR>

" Map fzf to Ctrl-p:
nnoremap <C-p> :GitFiles<CR>
nnoremap <leader>p :Files<CR>

" One sentence per line! Everywhere!
set textwidth=9999
