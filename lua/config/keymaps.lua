-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
-- keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- Jumplist
--keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
-- keymap.set("n", "<Tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<S-Tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
--keymap.set("n", "sh", "<C-w>h")
--keymap.set("n", "sk", "<C-w>k")
--keymap.set("n", "sj", "<C-w>j")
--keymap.set("n", "sl", "<C-w>l")

-- Append bottom line not moving cursor
keymap.set("n", "J", "mzJ`z")

--copy/delete to system buffer
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to Global" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to Global2" })
keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to Global" })

--harpoon
keymap.set("n", "<leader>a", mark.add_file, { desc = "Add to Harpoon" })
keymap.set("n", "<C-e>", ui.toggle_quick_menu)

keymap.set("n", "<C-t>", function()
  ui.nav_file(1)
end)
keymap.set("n", "<C-i>", function()
  ui.nav_file(2)
end)
keymap.set("n", "<C-n>", function()
  ui.nav_file(3)
end)
keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)
keymap.set("n", "<A-i>", function()
  ui.nav_next()
end)
keymap.set("n", "<A-t>", function()
  ui.nav_prev()
end)
