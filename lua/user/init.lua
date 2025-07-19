local M = {}

M.mappings = {
	n = {
		-- Ctrl + A to select all text in normal mode
		["<C-a>"] = { "ggVG", desc = "Select All" },
	},
}

return M
