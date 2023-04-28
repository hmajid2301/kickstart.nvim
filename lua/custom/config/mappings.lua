local map = vim.keymap.set

-- Paste
map("n", "@p", "i ^[p", { desc = "Paste at end of line with a space" })
map("n", "<leader>p", "\"_dP", { desc = "Paste without overwriting register" })

-- LazyGit
map('n', '<leader>gg', "<cmd>LazyGit<cr>", { desc = "Open lazy git" })

-- Undo Tree
map("n", "<leader>uu", "<cmd>Telescope undo<cr>", { desc = "Show undoo tree" })

-- Fuzzy Find
map("n", "<leader>cd", require("telescope").extensions.zoxide.list, { desc = "Change directory using fuzzy finding" })

-- Movement
map("v", "<", "<gv", { desc = "Stay in visual mode during outdent" })
map("v", ">", ">gv", { desc = "Stay in visual mode during indent" })
map("v", "J", ":m >+1<CR>gv=gv", { desc = "Mouse selected lines down" })
map("v", "K", ":m >-2<CR>gv=gv", { desc = "Mouse selected lines up" })

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
	{ silent = true, noremap = true }
)
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
	{ silent = true, noremap = true }
)
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
	{ silent = true, noremap = true }
)
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
	{ silent = true, noremap = true }
)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
	{ silent = true, noremap = true }
)
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
	{ silent = true, noremap = true }
)
