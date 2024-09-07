-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local options = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

------ NORMAL ------
map("n", "x", '"_x', { desc = "Delete character without copying to register" })
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
map("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Close current buffer" })
map("n", "<leader>bo", "<Cmd>BufferCloseAllButCurrent<CR>", { desc = "Close other buffers" })

------ INSERT ------
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

------ VISUAL BLOCK ------
map("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move selected text down" })
map("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move selected text up" })
map("x", "<A-j>", ":move '>+1<CR>gv-gv", { desc = "Move selected text down (Alt)" })
map("x", "<A-k>", ":move '<-2<CR>gv-gv", { desc = "Move selected text up (Alt)" })
