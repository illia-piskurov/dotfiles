-- Nvim-qt

-- Base
local font_name = "CaskaydiaCove NF Mono"
local font_size = 12
local not_transparent = false

vim.cmd("GuiWindowOpacity " .. (vim.g.gui_transparency_default))

vim.cmd [[
GuiTabline 0
GuiPopupmenu 0
]]
vim.cmd("GuiFont! " .. font_name .. ":h" .. font_size)
