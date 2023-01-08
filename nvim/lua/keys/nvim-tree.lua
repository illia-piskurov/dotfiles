local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<F2>',  '<Cmd>NvimTreeToggle<CR>', opts)
map('n', '<F3>', '<Cmd>NvimTreeFocus<CR>',   opts)
