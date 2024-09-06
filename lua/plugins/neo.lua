local defaults = require("neo-tree.defaults")
return {
  "nvim-neo-tree/neo-tree.nvim",
  optional = true,
  opts = function(_, opts)
    opts.open_files_do_not_replace_types = opts.open_files_do_not_replace_types
      or { "terminal", "Trouble", "qf", "Outline", "trouble" }
    table.insert(opts.open_files_do_not_replace_types, "edgy")
  end,
  config = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Add Cursor Up"] = "<C-[>",
      ["Add Cursor Down"] = "<C-]>",
    }

    local components = require("neo-tree.sources.common.components")
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
      default_component_configs = {
        icon = {
          default = " ",
        },
      },

      filesystem = {
        use_icons = false,
        components = {
          name = function(config, node, state)
            local name = components.name(config, node, state)
            if node:get_depth() == 1 then
              name.text = ""
            end
            return name
          end,
        },
      },
    })
  end,
}
