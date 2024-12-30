return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  config = function()
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")

    -- Keep track of state
    local insert_mode = true

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = function()
              if insert_mode then
                insert_mode = false
                vim.cmd("stopinsert")
              end
            end,
          },
          n = {
            ["<esc>"] = actions.close,
          },
        },
      },
    })
  end,
}
