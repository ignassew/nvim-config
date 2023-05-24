-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Enable incremental search
vim.opt.incsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Relative numbers
vim.o.relativenumber = true

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme catppuccin-mocha]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- Reject tabs - embrace 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Highlight on yank
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

