return {
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
}
