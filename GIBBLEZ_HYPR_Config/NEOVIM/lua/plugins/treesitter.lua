return {
"nvim-treesitter/nvim-treesitter",
build = ":TSUpdate",
config = function()
	local config = require("nvim-treesitter.configs")
	config.setup({
    ensure_installed = {"lua", "javascript", "c", "html", "python", "css"},
		highlight = {enable = true},
		indent = {enable = true},
	})
end
}
