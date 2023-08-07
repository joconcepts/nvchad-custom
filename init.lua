vim.g.do_filetype_lua = 1

vim.filetype.add({
	pattern = {
		-- ansible playbook
		[".*/.*play_.*.ya?ml"] = "yaml.ansible",
		[".*/.*tasks/.*.ya?ml"] = "yaml.ansible",
		[".*/(group|host)_vars/.*.ya?ml"] = "yaml.ansible",
		[".*/roles/.*.ya?ml"] = "yaml.ansible",
	},
})

vim.api.nvim_create_user_command('GitSU', 'gsu', {})

vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)
