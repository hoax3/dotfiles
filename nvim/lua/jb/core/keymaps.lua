vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w|", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>w-", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current window" })


keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<S-h>", "<cmd>tabp<CR>", { desc = "Go to next tab" })
keymap.set("n", "<S-l>", "<cmd>tabn<CR>", { desc = "Go to previous tab" })

keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
