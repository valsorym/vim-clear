CLEAR DEBRIS
============

The plugin allows you to quickly search the not desired characters and remove them.


Install
-------

Use vundle, add 
```
Plugin 'valsorym/vim-clear-debris'
```
and run `:PluginInstall!` in your vim.

Configs
-------

Add next configs into `~/.vimrc`:

```
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" CLEARDEBRIS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Remove trailing blanks.
""" USAGE: Ctrl+x, a
""" URLS:
"""     https://github.com/valsorym/vim-clear-debris
"""
""" Key mapping.
command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
imap <C-x> <Esc>:TrimSpaces<CR>
nmap <C-x> :TrimSpaces<CR>

```

... so, click `Ctrl+x`, and `a` to remove debris.

