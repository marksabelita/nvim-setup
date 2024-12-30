return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vault/personal",
      },
      {
        name = "make",
        path = "~/vault/make",
      },
      {
        name = "cpt",
        path = "~/vault/cpt",
      },
      {
        name = "vtk",
        path = "~/vault/vtk",
      },
    },
  },
}
