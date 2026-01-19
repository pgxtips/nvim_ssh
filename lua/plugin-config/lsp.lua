require("mason").setup()
require("mason-lspconfig").setup()


-- binds 
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float({border="rounded"}) end)
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
