require('telescope').setup()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader><Space>', builtin.oldfiles, {desc = 'Old Files'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' })
