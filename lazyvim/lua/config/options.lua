-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.ai_cmp = false -- No thank you!

local opt = vim.opt

opt.expandtab = false
-- opt.tabstop = 4
opt.wrap = true
-- opt.whichwrap = "b,s"
opt.scrolloff = 0
opt.shiftwidth = 4
opt.tabstop = 4

opt.expandtab = false -- for good measure

vim.g.autoformat = false -- I hate this so much
opt.clipboard = ""
