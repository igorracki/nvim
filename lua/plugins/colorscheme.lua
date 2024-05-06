local tokyonight = {
	"folke/tokyonight.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		require("tokyonight").setup({
			style = "moon",
			transparent = true,
		})
		vim.cmd.colorscheme("tokyonight-moon")
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
		vim.cmd.colorscheme("kanagawa")
	end,
}

local nord = {
	"shaunsingh/nord.nvim",
	config = function()
		vim.cmd.colorscheme("nord")
	end,
}

local catppuccin = {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({
			flavor = "mocha",
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}

local aura = {
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"baliestri/aura-theme",
		lazy = false,
		priority = 1000,
		config = function(plugin)
			vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
			vim.cmd.colorscheme("aura-soft-dark-soft-text")
		end,
	},
}

local moonfly = {
	"bluz71/vim-moonfly-colors",
	name = "moonfly",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("moonfly")
	end,
}

local melange = {
	"savq/melange-nvim",
	config = function()
		vim.opt.termguicolors = true
		vim.cmd.colorscheme("melange")
	end,
}

local nordic = {
	"AlexvZyl/nordic.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nordic").setup({
			transparent_bg = true,
		})
		vim.cmd.colorscheme("nordic")
	end,
}

local palenightfall = {
	"JoosepAlviste/palenightfall.nvim",
	config = function()
		require("palenightfall").setup({
			transparent = true,
		})
		vim.cmd.colorscheme("palenightfall")
	end,
}

local nightly = {
	"Alexis12119/nightly.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nightly").setup({
			transparent = false,
			styles = {
				comments = { italic = true },
				functions = { italic = false },
				variables = { italic = false },
				keywords = { italic = false },
			},
			highlights = {},
		})
		vim.cmd.colorscheme("nightly")
	end,
}

local lighthouse = {
	"mrjones2014/lighthaus.nvim",
	config = function()
		require("lighthaus").setup({
			bg_dark = false,
			colors = {},
			-- set to 'underline' to replace undercurl with underline
			-- or empty string '' to disable
			lsp_underline_style = "undercurl",
			transparent = true,
			italic_comments = false,
			italic_keywords = false,
		})
		vim.cmd.colorscheme("lighthaus_dark")
	end,
}

local neodark = {
	"VDuchauffour/neodark.nvim",
	config = function()
		-- require("neodark").setup({
		-- 	theme_style = "neodarker",
		-- })
		vim.cmd.colorscheme("neodarker")
	end,
}

local sweetfusion = {
	{
		"DanielEliasib/sweet-fusion",
		name = "sweet-fusion",
		priority = 1000,
		config = function()
			require("sweet-fusion").setup({
				transparency = false,
				dim_insactive = false,
			})
			vim.cmd.colorscheme("sweet-fusion")
		end,
	},
}

return { kanagawa }
