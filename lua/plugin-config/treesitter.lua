require("nvim-treesitter").setup({
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
    highlight = {
        enable = true,
    }
})

vim.api.nvim_create_autocmd('FileType', {
    -- all languages servers installed need to be declared for some 
    -- stupid ass reason, like bruh at least just have a flag that just does 
    -- this for all installed parsers, do I look like a mug, am i joke to you?
    pattern = { 'erlang', 'lua' },
    callback = function()
        -- syntax highlighting, provided by Neovim
        vim.treesitter.start()
        -- folds, provided by Neovim
        --vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        --vim.wo.foldmethod = 'expr'
        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
