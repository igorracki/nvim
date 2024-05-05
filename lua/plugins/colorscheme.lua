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
		-- Only needed for Windows Terminal.
		-- require("kanagawa").setup({
		-- 	commentStyle = { italic = false },
		-- 	keywordStyle = { italic = false },
		-- 	overrides = function()
		-- 		return {
		-- 			["@variable.builtin"] = { italic = false },
		-- 		}
		-- 	end,
		-- })
		vim.cmd.colorscheme("kanagawa-dragon")
	end,
}

local nord = {
	"shaunsingh/nord.nvim",
	config = function ()
		vim.cmd.colorscheme("nord")
	end
}

local catppuccin = {
	"catppuccin/nvim",
	config = function ()
		require("catppuccin").setup({
			flavor = "mocha",
		})
		vim.cmd.colorscheme("catppuccin")
	end
}

return { nord }
