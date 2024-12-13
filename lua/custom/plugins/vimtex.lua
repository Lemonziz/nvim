return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		-- vim.g.vimtex_view_method = "general" -- Built-in viewer method
		vim.g.vimtex_view_general_viewer = "okular"
		-- vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
		-- vim.g.vimtex_compiler_method = "latexmk"
		-- vim.g.vimtex_quickfix_open_on_warning = 0
	end,
}
