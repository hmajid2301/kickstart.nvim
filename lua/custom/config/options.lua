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
opt.cmdheight = 0                    -- hide command line unless needed
opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
opt.copyindent = true                -- Copy the previous indentation on autoindenting
opt.cursorline = true                -- Highlight the text line of the cursor
opt.expandtab = true                 -- Enable the use of space in tab
opt.fileencoding = "utf-8"           -- File content encoding for the buffer
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.opt.hlsearch = false  -- Set highlight on search
opt.ignorecase = true     -- Case insensitive searching UNLESS /C or capital in search
opt.incsearch = true      -- Set incremental search, highlight all patterns
opt.number = true         -- Make line numbers default
opt.mouse = 'a'           -- Enable mouse mode
opt.relativenumber = true -- Show relative numberline
opt.scrolloff = 8         -- Number of lines to keep above and below the cursor
opt.shiftwidth = 2        -- Number of space inserted for indentation
opt.showmode = false      -- Disable showing modes in command line
opt.showtabline = 2       -- always display tabline
opt.sidescrolloff = 8     -- Number of columns to keep at the sides of the cursor
opt.opt.smartcase = true  -- Keep signcolumn on by default
opt.termguicolors = true
opt.timeout = true
opt.timeoutlen = 100  -- Shorten key timeout length a little bit for which-key
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.signcolumn = 'yes'
opt.undofile = true   -- Save undo history
opt.undolevels = 10000
opt.updatetime = 250  -- Decrease update time
