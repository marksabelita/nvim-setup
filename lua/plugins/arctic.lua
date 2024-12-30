-- return {
--   "navarasu/onedark.nvim",
--   config = function()
--     require("onedark").setup({
--       -- Main options --
--       style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--       transparent = true, -- Show/hide background
--       term_colors = true, -- Change terminal color as per the selected theme style
--       ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--       cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
--       -- toggle theme style ---
--       toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--       toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
--
--       -- Change code style ---
--       -- Options are italic, bold, underline, none
--       -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
--       code_style = {
--         comments = "italic",
--         keywords = "none",
--         functions = "none",
--         strings = "none",
--         variables = "none",
--       },
--
--       -- Lualine options --
--       lualine = {
--         transparent = false, -- lualine center bar transparency
--       },
--
--       -- Custom Highlights --
--       colors = {}, -- Override default colors
--       highlights = {}, -- Override highlight groups
--
--       -- Plugins Config --
--       diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true, -- use undercurl instead of underline for diagnostics
--         background = true, -- use background color for virtual text
--       },
--     })
--   end,
-- }

return {
  "projekt0n/github-nvim-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("github-theme").setup({
      options = {
        transparent = true,
        terminal_colors = false,
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
      palettes = {
        github_dark_high_contrast = {},
      },
    })

    vim.cmd("colorscheme github_dark")
  end,
}

-- return {
--   "rockyzhang24/arctic.nvim",
--   dependencies = { "rktjmp/lush.nvim" },
--   name = "arctic",
--   branch = "main",
--   priority = 1000,
-- }

-- return { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 }
--
-- return { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 }
--
-- return {
--   -- add dracula
--   { "Mofiqul/dracula.nvim" },
--
--   -- Configure LazyVim to load dracula
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula",
--     },
--   },
-- }
--
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   lazy = true,
--   priority = 1000,
-- }
--
-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   lazy = true,
--   priority = 1000,
--   opts = {
--
--     variant = "auto", -- auto, main, moon, or dawn
--     dark_variant = "main", -- main, moon, or dawn
--     dim_inactive_windows = false,
--     extend_background_behind_borders = true,
--
--     styles = {
--       bold = true,
--       italic = true,
--       transparency = false,
--     },
--
--     groups = {
--       border = "muted",
--       link = "iris",
--       panel = "surface",
--
--       error = "love",
--       hint = "iris",
--       info = "foam",
--       warn = "gold",
--
--       git_add = "foam",
--       git_change = "rose",
--       git_delete = "love",
--       git_dirty = "rose",
--       git_ignore = "muted",
--       git_merge = "iris",
--       git_rename = "pine",
--       git_stage = "iris",
--       git_text = "rose",
--       git_untracked = "subtle",
--
--       headings = {
--         h1 = "iris",
--         h2 = "foam",
--         h3 = "rose",
--         h4 = "gold",
--         h5 = "pine",
--         h6 = "foam",
--       },
--       -- Alternatively, set all headings at once.
--       -- headings = "subtle",
--     },
--   },
-- }
