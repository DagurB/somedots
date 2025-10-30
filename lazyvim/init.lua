-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local opt = vim.opt
opt.expandtab = false

vim.api.nvim_set_hl(0, "CursorLine", {}) -- Why do I even need to set this? I already turned off transparency?

-- insert smoking duck gif
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", {bg = "none", fg = "#c53b53"})
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarning", {bg = "none", fg = "#ffc777"})
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", {bg = "none", fg = "#0db9d7"})



-- vim.api.create_autocmd("FileType", {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.keymap.set("n", "<c-j>", ":m .+1<cr>==", { desc = "move line down" })
-- 		vim.keymap.set("n", "<c-k>", ":m .-2<cr>==", { desc = "move line up" })
-- 	end,
-- })
