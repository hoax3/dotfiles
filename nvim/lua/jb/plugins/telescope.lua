return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("fzf")
    local keymap = vim.keymap

    local builtin = require('telescope.builtin')
    keymap.set('n', "<leader><Space>", builtin.find_files, { desc = "Find Files" })
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files"})
    keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Recent files" })
    keymap.set('n', '<leader>fc', builtin.command_history, { desc = "Recent Commands" })
    keymap.set('n', '<leader>,', builtin.buffers, { desc = 'Current buffers' })
  end,
}
