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

local rosepine = {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "main", -- auto, main, moon, or dawn
			dark_variant = "main", -- main, moon, or dawn
			dim_inactive_windows = false,
			extend_background_behind_borders = true,

			enable = {
				terminal = true,
				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
				migrations = true, -- Handle deprecated options automatically
			},

			styles = {
				bold = true,
				italic = false,
				transparency = true,
			},

			groups = {
				border = "muted",
				link = "iris",
				panel = "surface",

				error = "love",
				hint = "iris",
				info = "foam",
				note = "pine",
				todo = "rose",
				warn = "gold",

				git_add = "foam",
				git_change = "rose",
				git_delete = "love",
				git_dirty = "rose",
				git_ignore = "muted",
				git_merge = "iris",
				git_rename = "pine",
				git_stage = "iris",
				git_text = "rose",
				git_untracked = "subtle",

				h1 = "iris",
				h2 = "foam",
				h3 = "rose",
				h4 = "gold",
				h5 = "pine",
				h6 = "foam",
			},

			highlight_groups = {
				-- Comment = { fg = "foam" },
				-- VertSplit = { fg = "muted", bg = "muted" },
			},

			before_highlight = function(group, highlight, palette)
				-- Disable all undercurls
				-- if highlight.undercurl then
				--     highlight.undercurl = false
				-- end
				--
				-- Change palette colour
				-- if highlight.fg == palette.pine then
				--     highlight.fg = palette.foam
				-- end
			end,
		})
		vim.cmd("colorscheme rose-pine")
	end,
}

local kanagawa = {
	"rebelot/kanagawa.nvim",
	config = function()
		-- Only needed for Windows Terminal.
		require("kanagawa").setup({
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
			transparent = true,
			dimInactive = false,
			overrides = function()
				return {
					["@variable.builtin"] = { italic = false },
				}
			end,
		})
		vim.cmd.colorscheme("kanagawa-dragon")
		vim.cmd.hi("LineNR guibg=NONE guifg=NONE")
		vim.cmd.hi("GitSignsAdd guibg=NONE")
		vim.cmd.hi("GitSignsChange guibg=NONE")
		vim.cmd.hi("GitSignsDelete guibg=NONE")
		vim.cmd.hi("GitSignsAddLn guibg=NONE")
		vim.cmd.hi("GitSignsAddPreview guibg=NONE")
		vim.cmd.hi("SignColumn guibg=NONE")
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
				transparency = true,
				dim_insactive = true,
			})
			vim.cmd.colorscheme("sweet-fusion")
		end,
	},
}

return { rosepine }
