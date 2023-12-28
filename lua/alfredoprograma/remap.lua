-- LSP imports
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

-- Nvim
vim.g.mapleader = " " -- Sets up <Space> as map leader
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Opening directory navigator
vim.keymap.set("n", "<leader>t", vim.cmd.terminal) -- Opening terminal
vim.keymap.set("n", "<leader>vs", function() vim.cmd('vsplit') end) -- Splitting view in multiple windows

-- LSP
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- Confirm autocompletion
		['<Enter>'] = cmp.mapping.confirm({ select = false }),

		-- Trigger suggestions menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippets placeholders
		['<C-e>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),

		-- Scroll up and down in the completion documentation
		['<C-k>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
		['<C-j>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
	})
})
