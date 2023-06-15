local transparent_background

-- Disable transparent background of colorscheme for Neovide
-- Now i dont know how to do it for nvim-qt
if vim.g.neovide then
    transparent_background = false
else
    transparent_background = true
end

require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "soft", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = transparent_background,
})
vim.cmd("colorscheme gruvbox")