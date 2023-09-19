-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  {
    'jwalton512/vim-blade',
    ft = "blade",
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
  ,
  { 'mattn/emmet-vim' },
  { 'github/copilot.vim' },
  { 'norcalli/nvim-colorizer.lua' },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup(
        {
          openai_params = {
            model = "gpt-3.5-turbo",
            frequency_penalty = 0,
            presence_penalty = 0,
            max_tokens = 300,
            temperature = 0,
            top_p = 1,
            n = 1,
          },
        }
      )
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }
}
lvim.colorscheme = "catppuccin"
vim.opt.relativenumber = true
-- WHICH KEY MAPPING --
lvim.builtin.which_key.mappings["C"] = {
  name = "ChatGPT",
  c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
  e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
  g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
  t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
  k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
  d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
  a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
  o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
  s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
  f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
  x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
  r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
  l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
}
-- WHICH KEY MAPPING --
require 'colorizer'.setup()
