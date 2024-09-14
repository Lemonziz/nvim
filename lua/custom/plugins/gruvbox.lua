return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		vim.cmd("set background=dark") --[[ or light if you want light mode ]]
		vim.cmd("colorscheme gruvbox")
	end,
}
