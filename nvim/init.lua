-- Base
require('base/editor')
require('base/tabs')
require('base/search')

-- Packer (Plugin Manager) 
require('plugins/plugins')

-- Plugins
require('plugins/lualine')
require('plugins/barbar')
require('plugins/nvim-tree')
require('plugins/mason')

-- Colorscheme
require('plugins/gruvbox')
-- require('plugins/tokyonight')

-- Keys
require('keys/barbar')
require('keys/nvim-tree')
