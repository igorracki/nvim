function ColorEditor(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function ColorOne()
    ColorEditor()
end

function ColorTwo()
    ColorEditor("poimandres")
end

function ColorThree()
    ColorEditor("tokyonight")
end

function ColorFour()
    ColorEditor("bloop")
end

function ColorFive()
    ColorEditor("catppuccin-mocha")
end

ColorFive()
