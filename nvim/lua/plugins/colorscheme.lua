-- Disable transparent background of colorscheme for Neovide
-- Now i dont know how to do it for nvim-qt
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
