local plugins = {
  {
    'tpope/vim-fugitive', -- The premier Vim plugin for Git
    keys = {
      { "<leader>gg", "<cmd>Git<CR>5j", desc = "Git status" },
      { "<leader>gr", "<cmd>Gread<CR>", desc = "Read file from git" },
    },
  },
  {
    'tpope/vim-rhubarb', -- If fugitive.vim is the Git, rhubarb.vim is the Hub
    keys = {
      { "<leader>gb", "<cmd>:execute line('.') . 'GBrowse'<CR>", desc = "Open current line in GitHub" },
    },
  },
  {
    'airblade/vim-gitgutter', -- helpful git change navigation
    keys = {
      { "]h", "<Plug>(GitGutterNextHunk)", desc = "Go to next hunk" },
      { "[h", "<Plug>(GitGutterPrevHunk)", desc = "Go to previous hunk" },
    }
  },

  {
    'github/copilot.vim',
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      vim.cmd([[
        imap <silent><script><expr> <M-CR> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true
      ]])
    end,
  }
}
return plugins
