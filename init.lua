require("core/options")
require("core/keymaps")
require("plugins")
require("plugins/nvim-treesitter")
require("plugins/nvim-cmp")
require("plugins/nvim-lspconfig")
require("plugins/telescope")
require("plugins/alpha")
require("ui/statusline")

vim.opt.statusline = "%!v:lua.require'ui.statusline'.run()"
