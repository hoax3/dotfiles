return  { 
  --"folke/tokyonight.nvim",
  --  "olimorris/onedarkpro.nvim",
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe",
      integrations = {
        noice = true,
        which_key = true,
      }
    })
    vim.cmd.colorscheme "catppuccin"
  end
}


