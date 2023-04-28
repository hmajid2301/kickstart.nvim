-- Fuzzy Finder (files, lsp, etc)
return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		"kdheepak/lazygit.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", enabled = vim.fn.executable "make" == 1, build = "make" },
		'jvgrootveld/telescope-zoxide',
		"debugloop/telescope-undo.nvim",
	},
	cmd = "Telescope",
	opts = function(_, opts)
		local actions = require("telescope.actions")
		local trouble = require("trouble.providers.telescope")
		local telescope = require "telescope"
		telescope.setup(opts)

		return {
			extensions = {
				zoxide = {
					prompt_title = " Projects List",
				},
			},

			defaults = {
				mappings = {
					i = {
						["<c-t>"] = trouble.open_with_trouble,
						["<C-n>"] = actions.cycle_history_next,
						["<C-p>"] = actions.cycle_history_prev,
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						['<C-u>'] = false,
						['<C-d>'] = false,
					},
					n = { ["q"] = actions.close, ["<c-t>"] = trouble.open_with_trouble, },
				},
			},
		}
	end,
	config = function()
		require("telescope").load_extension("lazygit")
		require("telescope").load_extension("zoxide")
		require("telescope").load_extension("undo")

		-- See `:help telescope.builtin`
		vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles,
			{ desc = '[?] Find recently opened files' })
		vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers,
			{ desc = '[ ] Find existing buffers' })
		vim.keymap.set('n', '<leader>/', function()
			-- You can pass additional configuration to telescope to change theme, layout, etc.
			require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
				winblend = 10,
				previewer = false,
			})
		end, { desc = '[/] Fuzzily search in current buffer' })

		vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
		vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
		vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
		vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
		vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
		vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
	end
}
