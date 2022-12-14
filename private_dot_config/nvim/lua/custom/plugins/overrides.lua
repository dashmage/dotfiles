local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "html",
    "python",
    "yaml",
    "markdown",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "pyright",
    "marksman",
    "yaml-language-server"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
