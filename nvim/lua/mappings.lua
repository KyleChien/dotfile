require "nvchad.mappings"

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Select all
map("n", "<C-a>", "gg<S-v>G", opts)

-- Move to start/end of line
map({ "n", "x", "o" }, "H", "^", opts)
map({ "n", "x", "o" }, "L", "g_", opts)

-- Panes resizing
map("n", "+", ":vertical resize +2<CR>")
map("n", "_", ":vertical resize -2<CR>")
map("n", "=", ":resize +2<CR>")
map("n", "-", ":resize -2<CR>")

-- Paste without overwriting register
map("v", "p", '"_dp')
map("v", "P", '"_dP')

