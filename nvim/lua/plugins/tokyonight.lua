local transparent_background

-- Disable transparent background of colorscheme for Neovide
-- Now i dont know how to do it for nvim-qt
if vim.g.neovide then
    transparent_background = false
else
    transparent_background = true
end

require('tokyonight').setup({
    transparent = transparent_background,
})

vim.cmd('colorscheme tokyonight-storm')
