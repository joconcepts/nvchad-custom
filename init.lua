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

vim.api.nvim_create_user_command('GitSU', vim.fn.system("git submodule update --init --rebase --recursive"), {})

vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)

vim.api.nvim_command([[
  autocmd BufEnter * :lua require('lazygit.utils').project_root_dir()
]])

vim.opt.listchars = { trail = '.', tab = '>-', extends = '>' }
vim.opt.list = true
