function ColorEditor(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function ColorOne()
    require('rose-pine').setup({ disable_italics = true, })
    ColorEditor()
end

function ColorTwo()
    ColorEditor("tokyonight")
end

function ColorThree()
    ColorEditor("bloop")
end

function ColorFour()
    require('catppuccin').setup({ flavour = 'mocha', no_italic = true, })
    ColorEditor("catppuccin-mocha")
end

ColorOne()
