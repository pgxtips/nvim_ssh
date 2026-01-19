return {
    -- { "rose-pine/neovim", name = "rose-pine" },
    { "rebelot/kanagawa.nvim", name = "kanagawa" },
    { "nvim-telescope/telescope.nvim", name = "telescope", dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-treesitter/nvim-treesitter", 
        name = "treesitter",
        lazy = false,
        build = ':TSUpdate'
    },
    { "neovim/nvim-lspconfig" },
    {
        "mason-org/mason-lspconfig.nvim",
        name = "mason-lspconfig",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {}, name = "mason" },
            { "neovim/nvim-lspconfig" }
        },
    },
    {
        "hrsh7th/nvim-cmp",
        name = "nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            -- LSP completion source
            "hrsh7th/cmp-nvim-lsp",
            -- Useful extra sources
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",

            -- Snippets (optional, but most configs expect one)
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        }
    },
    {
        "tpope/vim-fugitive",
        priority = 100,
        lazy=false,
    }
}
