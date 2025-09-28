

-- bufferline --
return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      -- mode = "tabs",                  -- by default buffer will be opened on top separately
                                         -- setting to mode="tabs" collects all buffer into one tab
      separator_style = "",      -- predefined separator style
    },
    highlights = {
      fill = {
        guifg = "#c0caf5",
        guibg = "NONE",  -- Transparent background
      },
      background = {
        guifg = "#c0caf5",
        guibg = "NONE",  -- Transparent background
      },
      buffer_visible = {
        guifg = "#c0caf5",
        guibg = "NONE",  -- Transparent background
      },
      buffer_selected = {
        guifg = "#ffffff",
        guibg = "NONE",  -- Changed from "#44475a" to "NONE"
        gui = "bold,italic",
      },
      separator = {
        guifg = "NONE",
        guibg = "NONE",
      },
      separator_selected = {
        guifg = "NONE",  -- Changed from "#44475a" to "NONE"
        guibg = "NONE",  -- Changed from "#44475a" to "NONE"
      },
      indicator_selected = {
        guifg = "#ff9e64",
        guibg = "NONE",  -- Changed from "#44475a" to "NONE"
      },
    },
  },
}



