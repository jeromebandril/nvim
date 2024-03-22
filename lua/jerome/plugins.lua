--lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
    	'nvim-telescope/telescope.nvim', tag = '0.1.3',
	-- or                              , branch = '0.1.x',
      	dependencies = { 'nvim-lua/plenary.nvim' }
    },

	--colorschemes
    { 'rose-pine/neovim', name = 'rose-pine' },
	{'sainnhe/gruvbox-material', name="gruvbox-material"},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

	-- lsp 
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
	--others cmp
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-cmdline'},
	--for luasnip
    {
		'L3MON4D3/LuaSnip',
		build = "make install_jsregexp"
	},
	{'saadparwaiz1/cmp_luasnip'},
	{ "rafamadriz/friendly-snippets" },

	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},

	--nvim tree (+ icons for the latter)
	{'nvim-tree/nvim-web-devicons'},
	{'nvim-tree/nvim-tree.lua'}


}

local opts = {}


require("lazy").setup(plugins,opts)

