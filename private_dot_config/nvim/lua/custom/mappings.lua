local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },
  i = {
    -- navigate within insert mode
    ["<C-h>"] = { "<Left>", "move left" },
    ["<C-l>"] = { "<Right>", "move right" },
    ["<C-j>"] = { "<Down>", "move down" },
    ["<C-k>"] = { "<Up>", "move up" },
  },
}

-- more keybinds!
M.telescope = {
  n = {
    ["\\\\"] = { "<cmd> Telescope find_files <CR>", "file finder" },
  }
}

M.packer = {
  n = {
    ["<leader>ps"] = { "<cmd>PackerSync<cr>", "Packer Sync" },
    ["<leader>pS"] = { "<cmd>PackerStatus<cr>", "Packer Status" },
    ["<leader>pu"] = { "<cmd>PackerUpdate<cr>", "Packer Update" },
  },
}

return M
