--[[
require("catppuccin").setup({
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true
	}
})
--]]

function ColorMyPencils(color)
	color = color or "gruvbox-material"
	vim.cmd.colorscheme(color)

	-- transparency
	vim.api.nvim_set_hl(0,'Normal',{bg ="none"})
	vim.api.nvim_set_hl(0,'NormalNC',{bg ="none"})
	--vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]

end

ColorMyPencils()
