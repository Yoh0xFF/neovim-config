return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-telescope/telescope-file-browser.nvim",
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					initial_mode = "normal",
					file_ignore_patterns = {
						"node_modules/",
						"%.git/",
						"dist/",
						"build/",
						"%.next/",
						"target/",
						"%.cache/",
						"%.DS_Store",
					},
				},
			})
			telescope.load_extension("fzf")
			telescope.load_extension("file_browser")

			local map = vim.keymap.set
			local b = require("telescope.builtin")
			map("n", "<leader>ff", b.find_files, { desc = "Find files" })
			map("n", "<leader>fs", b.lsp_document_symbols, { desc = "File symbols" })
			map("n", "<leader>fg", b.live_grep, { desc = "Live grep" })
			map("n", "<leader>fb", b.buffers, { desc = "Find buffers" })
			map("n", "<leader>fh", b.help_tags, { desc = "Find help" })
			map("n", "<leader>fd", b.diagnostics, { desc = "Find diagnostics" })
			map("n", "<leader>fr", b.oldfiles, { desc = "Recent files" })
			map(
				"n",
				"<leader>fe",
				"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
				{ desc = "File browser" }
			)
		end,
	},
}
