return {
  -- Configure Pyright / Basedpyright
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
        ruff = {}, -- Ruff LSP for fast linting/organizing imports
      },
    },
  },

  -- Configure Formatting (conform.nvim)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_organize_imports", "ruff_format" },
        -- Alternatively, use Black:
        -- python = { "isort", "black" },
      },
    },
  },
}
