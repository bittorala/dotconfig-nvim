require('nvim-tresitter.configs').setup {
    ensure_installed = {"c", "c_sharp", "lua", "vim", "javascript", "go", "python"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
