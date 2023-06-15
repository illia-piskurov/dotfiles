local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Colorscheme
    'ellisonleao/gruvbox.nvim',
    -- Icons
    'nvim-tree/nvim-web-devicons',
    -- Powerline
    'nvim-lualine/lualine.nvim',
    -- Tabline
    {'romgrk/barbar.nvim',
        dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    -- File Tree
    'nvim-tree/nvim-tree.lua',
    -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    -- Auto completion 
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
}

local opts = {}

require("lazy").setup(plugins, opts)
