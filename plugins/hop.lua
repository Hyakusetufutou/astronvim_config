return {
  {
    "hadronized/hop.nvim",
    opts = {},
    keys = {
      {
        "t",
        function() require("hop").hint_words() end,
        mode = { "n", "v" },
        desc = "Hop hint words",
      },
      {
        "T",
        function() require("hop").hint_lines() end,
        mode = { "n", "v" },
        desc = "Hop hint lines",
      },
      {
        "f",
        function() require("hop").hint_char1() end,
        mode = { "n", "v" },
        desc = "Hop hint one char",
      },
      {
        "F",
        function() 
          require("hop").hint_char1(
            {
              current_line_only = true,
              -- direction = require("hop.hint").HintDirection.AFTER_CURSOR,
            }
          ) 
        end,
        mode = { "n", "v" },
        desc = "Hop hint vertical",
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
