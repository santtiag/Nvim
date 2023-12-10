require("toggleterm").setup {
    size = 15,
    open_mapping = [[\\]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    autochdir = false,   -- when neovim changes it current directory the terminal will change it's own when next it's opened
    highlights = {
        NormalFloat = {
            link = 'Normal'
        },
        border = 'curved',
        background = 'Normal',
        link = 'Normal'
    },
    shade_terminals = true,   -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
    shading_factor = 1,       -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
    start_in_insert = true,
    insert_mappings = true,   -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    persist_mode = true,      -- if set to true (default) the previous terminal mode will be remembered
    direction = 'float',      --'vertical' | 'horizontal' | 'tab' | 'float',
    float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
            border = 'Normal',
            background = 'Normal'
        }
    },
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell,
    auto_scroll = true,   -- automatically scroll to the bottom on terminal output
}

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
