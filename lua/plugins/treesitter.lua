return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "javascript", "c_sharp" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end,
    build = ':TSUpdate'
}

