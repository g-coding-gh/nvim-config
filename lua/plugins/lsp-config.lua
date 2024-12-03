return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({
        settings = {
          python = {
            pythonPath = "/Users/gsahajwalla/.pyenv/shims/python" 
          }
        },
        --cmd = { "/Users/gsahajwalla/.pyenv/shims/python", "-m", "pyright" },
				capabilities = capabilities,
			})
			lspconfig.lemminx.setup({ capabilities = capabilities })
			lspconfig.bashls.setup({ capabilities = capabilities })
			vim.keymap.set("n", "gH", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
