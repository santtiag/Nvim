require('lazy').setup({
    -- Plenary
    "nvim-lua/plenary.nvim",

    -- NeoTree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },


    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    "ellisonleao/gruvbox.nvim",
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    'nvim-treesitter/nvim-treesitter',

    -- cmp
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/vim-vsnip',

    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    "rafamadriz/friendly-snippets",
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    'terrortylor/nvim-comment',
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'akinsho/toggleterm.nvim', version = "*", config = true
    },

    { 'codota/tabnine-nvim', run = "./dl_binaries.sh" },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    },
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    },

    'onsails/lspkind-nvim',

    {
        'chikko80/error-lens.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' }
    },

    -- Notify
    'rcarriga/nvim-notify',

    -- Nui
    'MunifTanjim/nui.nvim',
    -- Cmd Noice
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },

    -- NeoDev
    {
        "folke/neodev.nvim", opts = {}
    },

    -- Mini
    {
        'echasnovski/mini.animate', version = '*'
    },
    {
        'echasnovski/mini.pairs', version = '*'
    },
    {
        'echasnovski/mini.surround', version = '*'
    },
    {
        'echasnovski/mini.cursorword', version = '*'
    },
    {
        'echasnovski/mini.indentscope', version = '*'
    },
    {
        'echasnovski/mini.indentscope', version = '*'
    }

})
