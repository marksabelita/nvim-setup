return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_a = {}
      opts.sections.lualine_b = {}
      opts.sections.lualine_z = {
        "branch",
      }
      opts.sections.lualine_y = {}
      opts.sections.lualine_x = {}
      opts.sections.lualine_c = {}
    end,
  },
}
