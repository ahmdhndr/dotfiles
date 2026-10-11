return {
  "danymat/neogen",
  keys = {
    {
      "<leader>kk",
      function()
        require("neogen").generate()
      end,
      desc = "Generate Annotations",
    },
    {
      "<leader>kf",
      function()
        require("neogen").generate({ type = "func" })
      end,
      desc = "Generate Annotations Function",
    },
    {
      "<leader>kc",
      function()
        require("neogen").generate({ type = "class" })
      end,
      desc = "Generate Annotations Class",
    },
    {
      "<leader>kt",
      function()
        require("neogen").generate({ type = "type" })
      end,
      desc = "Generate Annotations Type",
    },
  },
}
