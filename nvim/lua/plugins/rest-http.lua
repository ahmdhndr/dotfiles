return {
  "rest-nvim/rest.nvim",

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http")
    end,
  },

  keys = {
    -- Run request under cursor
    {
      "<leader>rr",
      "<cmd>Rest run<cr>",
      desc = "REST Run Request",
    },

    -- Re-run last request
    {
      "<leader>rl",
      "<cmd>Rest last<cr>",
      desc = "REST Last Request",
    },

    -- Open result pane
    {
      "<leader>ro",
      "<cmd>Rest open<cr>",
      desc = "REST Open Result",
    },

    -- Close result pane/window
    {
      "<leader>rx",
      function()
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          local buf = vim.api.nvim_win_get_buf(win)
          local filetype = vim.bo[buf].filetype

          if filetype == "rest" or filetype == "httpResult" then
            vim.api.nvim_win_close(win, true)
          end
        end
      end,
      desc = "REST Close Result",
    },

    -- Open logs
    {
      "<leader>rg",
      "<cmd>Rest logs<cr>",
      desc = "REST Logs",
    },

    -- Open cookies file
    {
      "<leader>rc",
      "<cmd>Rest cookies<cr>",
      desc = "REST Cookies",
    },

    -- Show active env
    {
      "<leader>re",
      "<cmd>Rest env show<cr>",
      desc = "REST Show Env",
    },

    -- Select env file
    {
      "<leader>rs",
      "<cmd>Rest env select<cr>",
      desc = "REST Select Env",
    },
  },
}
