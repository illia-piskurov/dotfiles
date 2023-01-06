vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Auto Update
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'folke/tokyonight.nvim'

    -- Status Bar
    use 'nvim-lualine/lualine.nvim'

end)
