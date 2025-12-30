return {
    { "rose-pine/neovim", name = "rose-pine" },
    { "rebelot/kanagawa.nvim", name = "kanagawa" },
    { "nvim-telescope/telescope.nvim", name = "telescope", dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-treesitter/nvim-treesitter", 
        name = "treesitter",
        lazy = false,
        build = ':TSUpdate'
    },
    { "mason-org/mason.nvim", name = "mason"}

}
