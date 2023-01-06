" Neovide

lua << EOF

if vim.g.neovide then
	
	-- Base
    vim.g.neovide_transparency = 0.9

    vim.g.neovide_scale_factor = 1.0

    vim.g.neovide_cursor_vfx_mode         = "railgun"
    vim.g.neovide_cursor_animation_length = 0.13
    vim.g.neovide_touch_drag_timeout      = 0.20

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

end

EOF