require('mason').setup()

require('mason-lspconfig').setup {
    ensure_installed = {
        'rust_analyzer',
        'sumneko_lua',
    },

    automatic_installation = false,
}

-- Run LSP's servers
require('mason-lspconfig').setup_handlers {
    function (server_name)
        require('lspconfig')[server_name].setup {}
    end,
}
