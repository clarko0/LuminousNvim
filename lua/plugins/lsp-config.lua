return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                PATH = "prepend"
            })
        end

    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver", "csharp_ls", "omnisharp" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.omnisharp.setup({})
            lspconfig.tsserver.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'D', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<A-.>', vim.lsp.buf.code_action, {})
        end
    }
}
