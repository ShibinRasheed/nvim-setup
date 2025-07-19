return {
	"echasnovski/mini.surround",
	version = false,
	event = "VeryLazy",
	opts = {
		mappings = {
			add = "gza", -- Add surrounding
			delete = "gzd", -- Delete surrounding
			replace = "gzr", -- Replace surrounding
			find = "gzf", -- Find right surrounding
			find_left = "gzF", -- Find left surrounding
			highlight = "gzh", -- Highlight surrounding
			update_n_lines = "gzn", -- Update search lines
		},
		n_lines = 20,
		respect_selection_type = false,
		search_method = "cover",
	},
	config = function(_, opts)
		require("mini.surround").setup(opts)
	end,

	-- ✅ Native AstroNvim keymaps (via astrocore)
	dependencies = {
		{
			"AstroNvim/astrocore",
			optional = true,
			opts = function(_, opts)
				local maps = opts.mappings

				maps.n["gza"] = { desc = "Add Surrounding" }
				maps.n["gzd"] = { desc = "Delete Surrounding" }
				maps.n["gzr"] = { desc = "Replace Surrounding" }
				maps.n["gzf"] = { desc = "Find Right Surrounding" }
				maps.n["gzF"] = { desc = "Find Left Surrounding" }
				maps.n["gzh"] = { desc = "Highlight Surrounding" }
				maps.n["gzn"] = { desc = "Update Surrounding Search Lines" }

				maps.v["gza"] = { desc = "Add Surrounding (Visual)" }
			end,
		},
	},
}
