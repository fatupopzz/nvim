return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {},
    config = function()
      require("nvim-tree").setup()
      require "configs.nvimtree"
    end,
  },
  { "airblade/vim-gitgutter", event = "BufRead" },
  { "scrooloose/nerdcommenter", event = "BufRead" },
  { "ctrlpvim/ctrlp.vim", event = "BufRead" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "mattn/emmet-vim", ft = { "html", "css", "javascriptreact", "typescriptreact" } },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false,
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
    },
    opts = {
      provider = "copilot",
    },
  },
}
