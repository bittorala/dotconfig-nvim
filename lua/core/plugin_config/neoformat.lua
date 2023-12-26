-- vim.g.neoformat_verbose = 1
vim.g.neoformat_try_formatprg = 1

vim.g.neoformat_enabled_javascript = {'prettier'}
vim.g.neoformat_javascript_prettier = {
    exe = 'prettier',
    args = {'--parser', 'babel'},
    stdin = 1,
}

vim.g.neoformat_enabled_python = {'black'}
vim.g.neoformat_python_black = {
    exe = 'black',
    args = {'-'},
    stdin = 1,
}

vim.keymap.set("n", "<leader>nf", "[[:Neoformat<CR>]]")
