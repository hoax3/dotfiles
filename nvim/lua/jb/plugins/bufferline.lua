return {
  'akinsho/bufferline.nvim', 
  event = "VeryLazy",
  keys = {
    {"<S-h>", "<cmd>BufferLineCyclePrev<CR>", desc = "Prev buffer" }, 
    {"<S-l>", "<cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
  },
  version = "*", 
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      close_command = function(n) require("mini.bufremove").delete(n, false) end,
      right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
      mode = "buffers",
      separator_style = "slant",
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'File Explorer', 
          highlight = "Directory", 
          text_align = "left",
          separator = true,
        },
      },
    },
  },
}
