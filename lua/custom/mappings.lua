local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = opts.silent ~= false
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Paste
map("n", "@p", "i ^[p", { desc = "Paste at end of line with a space" })
map("n", "<leader>p", "\"_dP", { desc = "Paste without overwriting register" })

-- LazyGit
map('n', '<leader>gg', "<cmd>LazyGit<cr>", { desc = "Open lazy git" })

-- Movement
map("v", "<", { "<gv", desc = "Stay in visual mode during outdent" })
map("v", ">", { ">gv", desc = "Stay in visual mode during indent" })
map("v", "J", { ":m >+1<CR>gv=gv", desc = "Mouse selected lines down" })
map("v", "K", { ":m >-2<CR>gv=gv", desc = "Mouse selected lines up" })
