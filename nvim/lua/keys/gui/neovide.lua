-- Neovide

-- Screen Manipulation
local function toggleTransparency()
    if vim.g.neovide_transparency == 1.0 then 
        vim.cmd(string.format(
            "let g:neovide_transparency=%s", vim.g.gui_transparency_default
        ))
    else
        vim.cmd "let g:neovide_transparency=1.0"
    end
end

local function toggleFullscreen()
    if vim.g.neovide_fullscreen == false then
        vim.cmd "let g:neovide_fullscreen=v:true"
    else
        vim.cmd "let g:neovide_fullscreen=v:false"
    end
end

-- Runtime Font Resize
RefreshGuiFont = function()
    vim.opt.guifont = string.format(
        "%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size
    )
end

ResizeGuiFont = function(delta)
    vim.g.gui_font_size = vim.g.gui_font_size + delta
    RefreshGuiFont()
end

ResetGuiFont = function ()
    vim.g.gui_font_size = vim.g.gui_font_default_size
    RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps
local opts = { noremap = true, silent = true }

vim.keymap.set({'n', 'i'}, "<F12>",  function() ResizeGuiFont(1)  end, opts)
vim.keymap.set({'n', 'i'}, "<F11>",  function() ResizeGuiFont(-1) end, opts)
vim.keymap.set({'n', 'i'}, "<F10>",  function() ResetGuiFont()    end, opts)
vim.keymap.set("n", "<F8>", toggleFullscreen,   opts)
vim.keymap.set("n", "<F9>", toggleTransparency, opts)
