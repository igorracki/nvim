local tokyonight = {
	"folke/tokyonight.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		vim.cmd.colorscheme("tokyonight-night")
		-- Configure highlights.
		vim.cmd.hi("Comment gui=none")
	end,
}

local kanagawa = {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
			overrides = function()
				return {
					["@variable.builtin"] = { italic = false },
				}
			end,
		})
		vim.cmd.colorscheme("kanagawa-dragon")
	end,
}

return { kanagawa }
