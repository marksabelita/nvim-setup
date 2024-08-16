return {
  "nvim-neo-tree/neo-tree.nvim",
  optional = true,
  opts = function(_, opts)
    opts.open_files_do_not_replace_types = opts.open_files_do_not_replace_types
      or { "terminal", "Trouble", "qf", "Outline", "trouble" }
    table.insert(opts.open_files_do_not_replace_types, "edgy")
  end,
  config = function()
    require("neo-tree").setup({
      ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
      popup_border_style = "rounded",
      window = {
        position = "float",
        -- You can add other float window options here if needed
      },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })
  end,
}
