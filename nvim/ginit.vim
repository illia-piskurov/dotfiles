lua << EOF

-- Default transparent
vim.g.gui_transparency_default = 0.9

-- Neovide --
if vim.g.neovide then

    require('base/gui/neovide')
    require('keys/gui/neovide')

end

-- Nvim-qt --
if vim.g.GuiLoaded then

    require('base/gui/nvim-qt')
    require('keys/gui/nvim-qt')

end

EOF
