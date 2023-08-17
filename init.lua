vim.g.do_filetype_lua = 1
vim.loader.enable()

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

vim.api.nvim_create_autocmd({"QuitPre"}, {
    callback = function() vim.cmd("NvimTreeClose") end,
})

local _border = "single"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = _border
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = _border
  }
)

vim.diagnostic.config{
  float={border=_border}
}
