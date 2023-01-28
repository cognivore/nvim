# NeoVIM dotfiles


## Plugins

`github/copilot.vim`, a plugin for using the copilot feature of GitHub Copilot.

`direnv/direnv.vim`, a plugin to automatically load environment variables from a `.envrc` file. It can also help with respecting nix path, but I'm not sure it actually works.

`Shougo/vimproc.vim`, a plugin which, when built, allows for asynchronous execution of commands. This is used by `Shougo/unite.vim` to provide asynchronous search and in `vimshell-copilot` to fork shell process.

`maxwell-bland/vimshell-copilot.vim` a fork of `Shougo/vimshell.vim` which uses `github/copilot.vim` to provide copilot suggestions in the shell. Absolute pogchamp!

`Shougo/unite.vim` a thing that lets you search for stuff. Used in the vimshell for tab-completion.

`luochen1990/rainbow` rainbow parentheses rule! Sadly, I don't know how to make it work with urxvt.
Perhaps, I should switch to alacritty, but I'm not sure how to use it without mouse.
For instance, in `urxvt` I can just press `Ctrl+I` and it will open a browser window for URL #n...

`wbthomason/packer.nvim` plugin manager for the plugins that have some heavy configuration like `NeoTree`.

## Architecture

Integration rc-file is `init.vim`. It is sourced by `nvim`.
We call `init.lua` from `init.vim` to set up Packer and the colourscheme.
But Packer can do so much more!
