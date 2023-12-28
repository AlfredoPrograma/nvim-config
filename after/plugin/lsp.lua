local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({
		buffer = bufnr,
		preserve_mappings = false,
	})
	lsp_zero.buffer_autoformat()
end)



require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'gopls'},
	handlers = {
		lsp_zero.default_setup,
	},
})
