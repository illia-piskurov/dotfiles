require('mason').setup()

require('mason-lspconfig').setup {
    ensure_installed = {
        'lua_ls',
    },

    automatic_installation = false,
}

-- Auto Completion
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Run LSP's servers
require('mason-lspconfig').setup_handlers {
    function (server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities
        }
    end,
}
