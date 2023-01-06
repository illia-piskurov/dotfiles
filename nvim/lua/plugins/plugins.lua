vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Auto Update
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'folke/tokyonight.nvim'

    -- Web Icons
    use 'nvim-tree/nvim-web-devicons'

    -- Status Bar
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Tabline
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

    -- File Explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

end)
