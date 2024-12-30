return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      highlight = "IblIndent",
    },
    whitespace = {
      highlight = "IblWhitespace",
      remove_blankline_trail = true,
    },
    scope = {
      enabled = true,
      char = "│",
      show_start = true,
      show_end = true,
      highlight = "IblScope",
    },
  },
}
