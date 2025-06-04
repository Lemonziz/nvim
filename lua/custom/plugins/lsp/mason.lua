return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		local lsp_ls = {
			"pyright",
			"graphql",
			"lua_ls",
			"cmake",
			"texlab",
			"bashls",
			"clangd",
			-- "matlab_ls",
			-- "asm_lsp",
		}

		local tool_ls = {
			"shellcheck",
			"shfmt",
			"cmakelang",
			"codelldb",
			"clang-format",
			"clangd",
			"prettier",
			"stylua", -- lua formatter
			"isort", -- python formatter
			"black", -- python formatter
			"eslint_d",
		}

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			registries = {
				"github:mason-org/mason-registry",
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = lsp_ls,
		})
		mason_tool_installer.setup({
			ensure_installed = tool_ls,
		})
		for _, server in ipairs(lsp_ls) do
			if server == "lua_ls" then
				vim.lsp.config("lua_ls", {
					settings = {
						["Lua"] = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				})
			elseif server == "bashls" then
				vim.lsp.config("bashls", {
					filetypes = { "zsh", "sh", "bash" },
				})
			else
				-- Default config for all other servers
				vim.lsp.config(server, {})
			end
		end
	end,
}
