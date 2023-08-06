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
