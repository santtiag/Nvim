vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set cmdheight=0')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
-- Mapea una tecla, por ejemplo <leader>v, para abrir una pestaña vertical

-- Save
-- vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- Exit
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })

-- Close Tabs
vim.api.nvim_set_keymap('n', '<C-w>', ':BufferLinePickClose<CR>', { noremap = true, silent = true })

-- Change Tabs
vim.api.nvim_set_keymap('n', 'L', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Change to windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Go to left window' })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Go to lower window' })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Go to upper window' })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Go to right window' })
