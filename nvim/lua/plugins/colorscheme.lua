-- Disable transparent background of colorscheme for Neovide
if vim.g.neovide then
    require('tokyonight').setup({
        transparent = false,
    })
    
else
    require('tokyonight').setup({
        transparent = true,
    })
end

vim.cmd('colorscheme tokyonight-storm')