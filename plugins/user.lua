return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "hadronized/hop.nvim",
    opts = {},
    keys = {
      {
        "t",
        function() require("hop").hint_words() end,
        mode = { "n" },
        desc = "Hop hint words",
      },
      {
        "T",
        function() require("hop").hint_lines() end,
        mode = { "n" },
        desc = "Hop hint lines",
      },
      -- {
      --   "f",
      --   function() require("hop").hint_words { extend_visual = true } end,
      --   mode = { "v" },
      --   desc = "Hop hint words",
      -- },
      -- {
      --   "F",
      --   function() require("hop").hint_lines { extend_visual = true } end,
      --   mode = { "v" },
      --   desc = "Hop hint lines",
      -- },
    },
  },
  -- { 
  --   "briones-gabriel/darcula-solid.nvim", 
  --   dependencies = {"rktjmp/lush.nvim",},
  -- },
  {
    "nvim-telescope/telescope.nvim",
    -- the second is the table of options as set up in Lazy with the `opts` key
    config = function(plugin, opts)
      -- run the core AstroNvim configuration function with the options table
      require("plugins.configs.telescope")(plugin, opts)

      require("telescope").setup {
        defaults = {
          file_ignore_patterns = {
            "/node_modules",
          },
        },
        pickers = {

          -- grep_string = {
          --   theme = "dropdown",
          -- },
          --
          -- live_grep = {
          --   theme = "dropdown",
          -- },

          find_files = {
            previewer = false,
            theme = "dropdown",
            -- file_encoding = "cp932",
          },

      --     planets = {
      --       show_pluto = true,
      --       show_moon = true,
      --     },
      --
      --     colorscheme = {
      --       enable_preview = true,
      --     },
      --
      --     lsp_references = {
      --       theme = "dropdown",
      --       initial_mode = "normal",
      --     },
      --
      --     lsp_definitions = {
      --       theme = "dropdown",
      --       initial_mode = "normal",
      --     },
      --
      --     lsp_declarations = {
      --       theme = "dropdown",
      --       initial_mode = "normal",
      --     },
      --
      --     lsp_implementations = {
      --       theme = "dropdown",
      --       initial_mode = "normal",
      --     },
      --   },
      --   extensions = {
      --     fzf = {
      --       fuzzy = true, -- false will only do exact matching
      --       override_generic_sorter = true, -- override the generic sorter
      --       override_file_sorter = true, -- override the file sorter
      --       case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      --     },
        },
      }
    end,
  },
}
