return {
	"nvimtools/none-ls.nvim",
	opts = function(_, opts)
		local null_ls = require("null-ls")

		opts.sources = require("astrocore").list_insert_unique(opts.sources, {
			null_ls.builtins.formatting.prettier.with({
				filetypes = {
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"html",
					"css",
					"json",
					"markdown",
				},
				condition = function()
					return vim.fn and vim.fn.executable and vim.fn.executable("prettier") == 1
				end,
			}),
		})
	end,
}
