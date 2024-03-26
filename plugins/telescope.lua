return {
  {
    "nvim-telescope/telescope.nvim",
    -- the second is the table of options as set up in Lazy with the `opts` key
    config = function(plugin, opts)
      -- run the core AstroNvim configuration function with the options table
      require("plugins.configs.telescope")(plugin, opts)
      vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"
      require("telescope").setup {
        defaults = {
          -- file_ignore_patterns = {
          --   "/node_modules",
          -- },
          vimgrep_arguments = {
            -- ripggrepコマンドのオプション
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "-uu",
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
