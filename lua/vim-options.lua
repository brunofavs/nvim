-- ººººººººººººººººººººººººººººººººººººººº
-- 		Vim Commands
-- ººººººººººººººººººººººººººººººººººººººº

-- Deleting goes into a trash registry, to not interfere with yanking registry
vim.cmd('nnoremap d "_d')
-- Moving half page down/up also centers cursor, to prevent having to search for the cursor
vim.cmd("noremap <C-d> <C-d>zz ")
vim.cmd("nnoremap <C-u> <C-u>zz")
-- Moves to first non whitespace instead of beggining of line
vim.cmd("map 0 ^")
vim.cmd("set nu!")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
--vim.cmd("set cmdheight=0")

-- Experimental
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("let g:python3_host_prog = '/usr/bin/python3'")
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')


