return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
  },
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        highlight = {
          enable = true,
        },
        indent = { enable = true },
        autotag = {
          enable = true,
        },

        ensure_installed = {
          "json",
          "javascript", 
          "typescript", 
          "tsx", 
          "yaml", 
          "html", 
          "css", 
          "markdown", 
          "markdown_inline", 
          "bash", 
          "lua", 
          "vim", 
          "dockerfile", 
          "go", 
          "python", 
          "jq", 
          "make",
        },
      })
    end,
}
