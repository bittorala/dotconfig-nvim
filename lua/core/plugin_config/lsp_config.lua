require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" }
})

local on_attach = function(_, _)
    vim.api.nvim_set_keymap('n', '<leader>rn', 'vim.lsp.buf.nename', {})
    vim.api.nvim_set_keymap('n', '<leader>ca', 'vim.lsp.buf.code_action', {})
    vim.api.nvim_set_keymap('n', 'gd', 'vim.lsp.buf.definition', {})
    vim.api.nvim_set_keymap('n', 'gi', 'vim.lsp.buf.implementation', {})
    vim.api.nvim_set_keymap('n', 'gr', require('telesecope.builtin').lsp_references, {})
    vim.api.nvim_set_keymap('n', 'K', 'vim.lsp.buf.hover', {})
end

require("lspconfig").lua_ls.setup {
    on_attach = on_attach
}
