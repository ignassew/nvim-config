-- Treesiter config
require("nvim-treesitter.configs").setup({
    ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'typescript', "vimdoc", "vim" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true, disable = { "python" } },
})

