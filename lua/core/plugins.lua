local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
    local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    vim.fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd 'packadd packer.nvim'
end

local packer = require('packer')

packer.startup(function()
    use 'tjdevries/colorbuddy.vim' -- Dependency for some plugins
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'sbdchd/neoformat'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-tree').setup {
                update_focused_file = {
                    enable = true,
                }
            }
        end
    }
    use {
         'nvim-telescope/telescope.nvim',
         requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
end)

