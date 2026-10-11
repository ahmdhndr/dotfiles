return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { "<leader>ze", ":CopilotChatExplainCode<CR>", mode = "v", desc = "Explain code" },
      { "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix code issues" },
      { "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize code" },
      { "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate docs" },
    },
  },
}
