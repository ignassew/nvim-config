vim.loader.enable()

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {})
require("options")
require("keymaps")
require("treesitter")
require("lsp")
require("cmp_config")
require("null_ls")
require("telescope_config")

