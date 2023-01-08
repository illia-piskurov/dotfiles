-- Screen Manipulation
local function toggleTransparency()
    not_transparent = not not_transparent
    if not_transparent then
        vim.cmd("GuiWindowOpacity " .. (vim.g.gui_transparency_default))
    else
        vim.cmd("GuiWindowOpacity " .. (1.0))
    end
end

local function toggleFullscreen()
    if vim.g.GuiWindowFullScreen == 0 then
        vim.cmd("call GuiWindowFullScreen(" .. 1 .. ")")
    else
        vim.cmd("call GuiWindowFullScreen(" .. 0 .. ")")
    end
end

-- Keymaps
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<F9>", toggleTransparency, opts)
vim.keymap.set("n", "<F8>", toggleFullscreen,   opts)
