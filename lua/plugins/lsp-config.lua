return{
	{
	"williamboman/mason.nvim",
    config=function()
	require("mason").setup()
    end
	},
	{
	"williamboman/mason-lspconfig.nvim",
	config=function()
		require("mason-lspconfig").setup({
			ensure_installed = {
          "lua_ls",
          "bashls",
          "clangd",
          "cmake",
          "jsonls",
          "ltex",
          "autotools_ls",
          "markdown_oxide",
          "pyright",
          "lemminx",
          "yamlls"
        }
			})
	end
	},
  {'WhoIsSethDaniel/mason-tool-installer.nvim',
    config = function()
      require('mason-tool-installer').setup({
      -- Install these linters, formatters, debuggers automatically
        ensure_installed = {
          'black',
          'debugpy',
          'flake8',
          'isort',
          'mypy',
          'pylint',
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      --lspconfig.bashls.setup({})
      --lspconfig.clangd.setup({})
      --lspconfig.cmake.setup({})
      lspconfig.jsonls.setup({
        capabilities = capabilities
      })
      --lspconfig.ltex.setup({})
      --lspconfig.autotools_ls.setup({})
      --lspconfig.markdown_oxide.setup({})
      --lspconfig.ruff_lsp.setup({
      --capabilities = capabilities
      --})
      --lspconfig.lemminx.setup({})
      --lspconfig.yamlls.setup({})
      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n','<S-h>',vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}



