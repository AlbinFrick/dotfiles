return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  -- lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "obsidian-notes",
        path = "~/EDF/private/notes",
      },
    },

    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M:%S",
    },
    mappings = {
      ["<leader>od"] = {
        action = function()
          vim.cmd("ObsidianDailies")
        end,
        opts = { buffer = true },
      },
      ["<leader>ot"] = {
        action = function()
          vim.cmd("ObsidianTags")
        end,
        opts = { buffer = true },
      },
      ["<leader>of"] = {
        action = function()
          vim.cmd("ObsidianSearch")
        end,
        opts = { buffer = true },
      },
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      -- Smart action depending on context, either follow link or toggle checkbox.
      ["<cr>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      },
    },

    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "journal",
      -- Optional, if you want to change the date format for the ID of daily notes.
      -- date_format = "%Y-%m-%d",
      -- -- Optional, if you want to change the date format of the default alias of daily notes.
      -- alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "journal" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      -- template = nil,
    },
  },
}
