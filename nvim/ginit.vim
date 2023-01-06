lua << EOF

-- Default transparent
local transparency_default = 0.9

-------------
-- Neovide --
-------------

if vim.g.neovide then
	
	-- Base
    vim.g.neovide_transparency = transparency_default

    vim.g.neovide_scale_factor = 1.0

    vim.g.neovide_cursor_vfx_mode         = "railgun"
    vim.g.neovide_cursor_animation_length = 0.13
    vim.g.neovide_touch_drag_timeout      = 0.20

    vim.g.remember_window_size     = true
    vim.g.remember_window_position = true

    -- Screen Manipulation
    local function toggleTransparency()
        if vim.g.neovide_transparency == 1.0 then 
            vim.cmd(string.format(
                "let g:neovide_transparency=%s", transparency_default
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
    vim.g.gui_font_default_size = 11
	vim.g.gui_font_size = vim.g.gui_font_default_size
	vim.g.gui_font_face = "CaskaydiaCove NF Mono"

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

end

-------------
-- Nvim-qt --
-------------

if vim.g.GuiLoaded then

    -- GUI Client is run
    vim.g.run_with_gui = true

    local font_name = "CaskaydiaCove NF Mono"
    local font_size = 12
    local not_transparent = false

    vim.cmd("GuiWindowOpacity " .. (transparency_default))

    -- Screen Manipulation
    local function toggleTransparency()
        not_transparent = not not_transparent
        if not_transparent then
            vim.cmd("GuiWindowOpacity " .. (transparency_default))
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

    vim.cmd [[
    GuiTabline 0
    GuiPopupmenu 0
    ]]
    vim.cmd("GuiFont! " .. font_name .. ":h" .. font_size)
end

EOF
