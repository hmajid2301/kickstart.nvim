-- [[ Setting options ]]
-- See `:help vim.o`

-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.cmd.colorscheme "catppuccin"

local opt = vim.opt

opt.breakindent = true               -- Enable break indent
opt.colorcolumn = "120"              -- Show column length
opt.clipboard = 'unnamedplus'        -- Sync clipboard between OS and Neovim.
opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
opt.hlsearch = false                 -- Set highlight on search
opt.ignorecase = true                -- Case insensitive searching UNLESS /C or capital in search
opt.incsearch = true                 -- Set incremental search, highlight all patterns
opt.number = true                    -- Make line numbers default
opt.mouse = 'a'                      -- Enable mouse mode
opt.smartcase = true                 -- Keep signcolumn on by default
opt.termguicolors = true
opt.timeout = true
opt.timeoutlen = 300 -- Shorten key timeout length a little bit for which-key
opt.signcolumn = 'yes'
opt.undofile = true  -- Save undo history
opt.updatetime = 250 -- Decrease update time
